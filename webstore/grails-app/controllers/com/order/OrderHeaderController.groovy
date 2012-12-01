package com.order

import com.openappengine.model.cart.ShoppingCart

import com.openappengine.model.product.Product
import com.openappengine.model.shipping.Address
import com.sun.java.swing.plaf.windows.WindowsInternalFrameTitlePane.ScalableIconUIResource;

import org.grails.paypal.Payment
import org.springframework.dao.DataIntegrityViolationException



class OrderHeaderController {
	
	def mailService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [orderHeaderInstanceList: OrderHeader.list(params), orderHeaderInstanceTotal: OrderHeader.count()]
    }

    def create() {
        [orderHeaderInstance: new OrderHeader(params)]
    }

    def save() {
        def orderHeaderInstance = new OrderHeader(params)
        if (!orderHeaderInstance.save(flush: true)) {
            render(view: "create", model: [orderHeaderInstance: orderHeaderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), orderHeaderInstance.id])
        redirect(action: "show", id: orderHeaderInstance.id)
    }

    def show(Long id) {
        def orderHeaderInstance = OrderHeader.get(id)
        if (!orderHeaderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), id])
            redirect(action: "list")
            return
        }

        [orderHeaderInstance: orderHeaderInstance]
    }

    def edit(Long id) {
        def orderHeaderInstance = OrderHeader.get(id)
        if (!orderHeaderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), id])
            redirect(action: "list")
            return
        }

        [orderHeaderInstance: orderHeaderInstance]
    }

    def update(Long id, Long version) {
        def orderHeaderInstance = OrderHeader.get(id)
        if (!orderHeaderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (orderHeaderInstance.version > version) {
                orderHeaderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'orderHeader.label', default: 'OrderHeader')] as Object[],
                          "Another user has updated this OrderHeader while you were editing")
                render(view: "edit", model: [orderHeaderInstance: orderHeaderInstance])
                return
            }
        }

        orderHeaderInstance.properties = params

        if (!orderHeaderInstance.save(flush: true)) {
            render(view: "edit", model: [orderHeaderInstance: orderHeaderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), orderHeaderInstance.id])
        redirect(action: "show", id: orderHeaderInstance.id)
    }

    def delete(Long id) {
        def orderHeaderInstance = OrderHeader.get(id)
        if (!orderHeaderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), id])
            redirect(action: "list")
            return
        }

        try {
            orderHeaderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'orderHeader.label', default: 'OrderHeader'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def createOrder = {
		
		def a = params.transactionId
		def payment = Payment.findByTransactionId(a)
		def orderHeaderInstance = OrderHeader.findByTransactionId(a)
		def sc = new ShoppingCart()
		sc = ShoppingCart.findByTransactionId(a)
		
		if (!orderHeaderInstance)
		{
		orderHeaderInstance = new OrderHeader()
		
		def add = sc.billingAddressId 
		def billingAdd = Address.get(add)
		def ship = sc.shippingAddressId
		def shippingAdd = Address.get(add)
		
		orderHeaderInstance.orderNumber = params.transactionId
		orderHeaderInstance.orderDate = new Date()
		orderHeaderInstance.totalAmount = 0
		orderHeaderInstance.totaldiscount = 0
		orderHeaderInstance.currency = Currency.getInstance("USD")
		orderHeaderInstance.transactionId = params.transactionId
		orderHeaderInstance.paypalTransactionId = params.transactionId
		orderHeaderInstance.status = "PROCESSING"
		orderHeaderInstance.firstName = billingAdd.firstName 
		orderHeaderInstance.lastName = billingAdd.lastName 
		orderHeaderInstance.company = billingAdd.company 
		orderHeaderInstance.addressLine1 = billingAdd.addressLine1
		orderHeaderInstance.addressLine2 = billingAdd.addressLine2
		orderHeaderInstance.landmark = billingAdd.landmark
		orderHeaderInstance.city = billingAdd.city 
		orderHeaderInstance.state = billingAdd.state
		orderHeaderInstance.country = billingAdd.country
		orderHeaderInstance.zip = billingAdd.zip
		orderHeaderInstance.primaryPhone = billingAdd.primaryPhone
		orderHeaderInstance.email = billingAdd.email
		orderHeaderInstance.save(flush:true)
		BigDecimal totalAmount = 0
		
		payment.paymentItems.eachWithIndex {paymentItem, i ->
			def orderItem = new OrderItem()
			orderItem.itemId = paymentItem.itemNumber.toInteger()
			orderItem.productId = paymentItem.itemNumber.toInteger()
			orderItem.line = 1
			orderItem.quantity = paymentItem.quantity
			orderItem.lineTotalPrice = paymentItem.amount
			totalAmount = totalAmount + paymentItem.amount
			orderHeaderInstance.addToOrderItem(orderItem)
			orderHeaderInstance.save(flush:true)
			
		}
		orderHeaderInstance.totalAmount = totalAmount
		orderHeaderInstance.save(flush:true)
		}
		
		//Delete
		if(sc) {
			sc.delete(flush:true)
		}
		
		//Email
		mailService.sendMail {
			to orderHeaderInstance.email
			from "webstore@moryasolutions.com"
			subject "Payment Successful for Order #" + orderHeaderInstance.orderNumber
			html g.render(template:"orderConfirmationMailTemplate",bean : payment, var : "payment")
		}
		
		[payment : payment]
	}
}
