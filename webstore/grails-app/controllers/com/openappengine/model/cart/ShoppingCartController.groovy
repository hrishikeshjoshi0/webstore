package com.openappengine.model.cart

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.grails.paypal.Payment
import org.grails.paypal.PaymentItem
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.context.request.RequestContextHolder

import com.openappengine.model.product.Product
import com.openappengine.model.shipping.Address

class ShoppingCartController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def springSecurityService
	
	

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [shoppingCartInstanceList: ShoppingCart.list(params), shoppingCartInstanceTotal: ShoppingCart.count()]
    }

    def create() {
        [shoppingCartInstance: new ShoppingCart(params)]
    }
	
	def createShoppingCart() {
		def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
		
		def sc = ShoppingCart.findBySessionID(sessionID)
		if(!sc) {
			sc = new ShoppingCart(sessionID:sessionID)
			sc.save(flush:true)
		}
	}
	
	def removeFromShoppingCart() {
		def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
		
		def sc = ShoppingCart.findBySessionID(sessionID)
		if(!sc) {
			return;
		}
		
		def sci= ShoppingCartItem.findByShoppingCartAndProductId(sc,params.productId)
		if(sci) {
			sci.delete(flush:true)
		}
		
		redirect(action: "showCart",id:sc.shoppingCartId)
		
	}
	
	def addToShoppingCart() {
		def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
		
		def sc = ShoppingCart.findBySessionID(sessionID)
		if(!sc) {
			sc = new ShoppingCart(sessionID:sessionID)
			sc.save(flush:true)
		}
		
		def sci= ShoppingCartItem.findByShoppingCartAndProductId(sc,params.productId)
		if(!sci) {
			sci = new ShoppingCartItem()
			sci.shoppingCart = sc
			
			sci.productId = params.productId
			sci.quantity = 1
			BigDecimal price = Product.get(params.productId)?.getProductPrice(new Date())
			sci.lineTotalPrice = price?.multiply(sci.quantity)
		} else {
			sci.quantity = sci.quantity + 1;
			
			BigDecimal price = Product.get(params.productId)?.getProductPrice(new Date())
			sci.lineTotalPrice = price?.multiply(sci.quantity)
		}
		
		sci.save(flush:true)
		
		
		redirect(action: "showCart",id:sc.shoppingCartId)
	}
	
	def showCart() {
		def sc
		if(params.id) {
			sc = ShoppingCart.get(params.id)
			if (!sc) {
				//TODO
				return
			}
		 } else {
			 def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
			 
			 sc = ShoppingCart.findBySessionID(sessionID)
			 if(!sc) {
				 sc = new ShoppingCart(sessionID:sessionID)
				 sc.save(flush:true)
			 }
		 }
		[shoppingCartInstance: sc]
	}
	
	def checkout_login() {
		def config = SpringSecurityUtils.securityConfig
		def sc = ShoppingCart.get(params.shoppingCartId)
		
		String view = 'auth'
		String postUrl = "${request.contextPath}${config.apf.filterProcessesUrl}"
		
		if(springSecurityService.isLoggedIn()) {
			def model = [shoppingCartInstance:sc,sameShippingAddress:true]
			redirect(redirect(action: "checkout_address",model : model))
			return
		} 
		
		[shoppingCartInstance:sc,postUrl:postUrl,checkoutType:"NEW_CUSTOMER"]
	}
	
	def checkout_login_process() {
		def sc = ShoppingCart.get(params.shoppingCartId)
		def model = [shoppingCartInstance:sc,checkoutType:"NEW_CUSTOMER"]
		params.shoppingCartId =sc?.shoppingCartId
		redirect(action: "checkout_address",model : model, params:params)
	}
	
	def checkout_address() {
		if(!params.shoppingCartId) {
			//TODO
			return
		}
		
		def sc = ShoppingCart.get(params.shoppingCartId)
		def billingAddress = new Address()
		def shippingAddress = new Address()
		[shoppingCartInstance:sc,billingAddress:billingAddress,shippingAddress:shippingAddress]
	}
	
	def checkout_address_process() {
		if(!params.shoppingCartId) {
			//TODO
			return
		}
		
		def sc = ShoppingCart.get(params.shoppingCartId)
		
		def billingAddress = new Address()
		bindData(billingAddress,params,"billing")
		sc.billingAddress = billingAddress
		billingAddress.save(flush:true)
		
		sc.billingAddress = billingAddress
		
		def sameShippingAddress = true
		println(params.sameShippingAddress)
		if(params.sameShippingAddress == 'on') {
			sameShippingAddress = true 
		} else {
			sameShippingAddress = false
		}
		
		if(!sameShippingAddress) {
			def shippingAddress = new Address()
			bindData(shippingAddress,params,"billing")
			sc.billingAddress = billingAddress
			shippingAddress.save(flush:true)
			sc.shippingAddress = shippingAddress
		} else {
			sc.shippingAddress = billingAddress
		}
		sc.save(flush:true)
		
		def model = [shoppingCartInstance:sc]
		params.shoppingCartId = sc.shoppingCartId
		redirect(action: "checkout_payment",model : model,params:params)
	}
	
	def checkout_payment() {
		if(!params.shoppingCartId) {
			//TODO
			return
		}
		
		def sc = ShoppingCart.get(params.shoppingCartId)
		[shoppingCartInstance:sc]
	}
	
	def checkoutPaypal() {
		if(!params.shoppingCartId) {
			//TODO
			return
		}
		
		def sc = ShoppingCart.get(params.shoppingCartId)
		Payment paypalPayment = null
		if(sc.cartItems) {
			paypalPayment = new Payment()
			paypalPayment.buyerId = 0;
			paypalPayment.discountCartAmount = new BigDecimal("0.0")
			paypalPayment.tax = new BigDecimal("0.0")
			
			sc.cartItems.eachWithIndex { cartItem, i ->
				def ppi = new PaymentItem()
				ppi.amount = cartItem.lineTotalPrice
				ppi.itemName = Product.get(cartItem.productId)?.pdProductName
				ppi.itemNumber = cartItem.productId
				ppi.quantity = cartItem.quantity
				
				paypalPayment.addToPaymentItems(ppi)
			}
		}
		paypalPayment.save(flush:true)
		redirect(controller:"paypal",action:"uploadCart",params:[transactionId:paypalPayment.transactionId])
	}
	
    def save() {
        def shoppingCartInstance = new ShoppingCart(params)
        if (!shoppingCartInstance.save(flush: true)) {
            render(view: "create", model: [shoppingCartInstance: shoppingCartInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), shoppingCartInstance.id])
        redirect(action: "show", id: shoppingCartInstance.id)
    }

    def show() {
        def shoppingCartInstance = ShoppingCart.get(params.id)
        if (!shoppingCartInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), params.id])
            redirect(action: "list")
            return
        }

        [shoppingCartInstance: shoppingCartInstance]
    }

    def edit() {
        def shoppingCartInstance = ShoppingCart.get(params.id)
        if (!shoppingCartInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), params.id])
            redirect(action: "list")
            return
        }

        [shoppingCartInstance: shoppingCartInstance]
    }

    def update() {
        def shoppingCartInstance = ShoppingCart.get(params.id)
        if (!shoppingCartInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (shoppingCartInstance.version > version) {
                shoppingCartInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'shoppingCart.label', default: 'ShoppingCart')] as Object[],
                          "Another user has updated this ShoppingCart while you were editing")
                render(view: "edit", model: [shoppingCartInstance: shoppingCartInstance])
                return
            }
        }

        shoppingCartInstance.properties = params

        if (!shoppingCartInstance.save(flush: true)) {
            render(view: "edit", model: [shoppingCartInstance: shoppingCartInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), shoppingCartInstance.id])
        redirect(action: "show", id: shoppingCartInstance.id)
    }

    def delete() {
        def shoppingCartInstance = ShoppingCart.get(params.id)
        if (!shoppingCartInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), params.id])
            redirect(action: "list")
            return
        }

        try {
            shoppingCartInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'shoppingCart.label', default: 'ShoppingCart'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
	
	def getOrderSummary() {
		def sc = ShoppingCart.get(params.id)
		
		def subtotal = new BigDecimal("0.0")
		def shipping = new BigDecimal("0.0")
		//TODO
		def tax = new BigDecimal("0.0")
		def total = new BigDecimal("0.0")
		def discount = new BigDecimal("0.0")
		def orderSummary = new OrderSummaryCommand()
		
		if(sc && !sc?.cartItems?.isEmpty()) {
			sc.cartItems.eachWithIndex { cartItem, i ->
				def product = Product.get(cartItem.productId)
				def productPrice = product.getProductPrice(new Date())
				if(productPrice) {
					subtotal += productPrice
				}
			}
		}
		
		def displayCartItems = params.displayCartItems
		if(!displayCartItems) {
			displayCartItems = false
		} else {
			displayCartItems = params.displayCartItems.toBoolean()
		}
		
		orderSummary.discount = discount
		orderSummary.subtotal = subtotal
		orderSummary.shipping = shipping
		orderSummary.tax = tax
		orderSummary.total = subtotal + shipping + tax
		def model = [orderSummary : orderSummary,shoppingCartInstance:sc,displayCartItems:displayCartItems]
		if (request.xhr) {
			// ajax request
			render(template: "orderSummary", model: model)
		} else {
			model
		}
	}
}

class OrderSummaryCommand {
	private BigDecimal subtotal;
	private BigDecimal discount;
	private BigDecimal shipping;
	private BigDecimal tax;
	private BigDecimal total;
}

class UserCommand {
	private String firstName;
	private String lastName;
	private String company;
	private String addressLine1;
	private String addressLine2;
	private String landmark;
	private String city;
	private String state;
	private String country;
	private String zip;
	private String primaryPhone;
	private String email;
	private String shippingAddress;
	private String shoppingCartId;
	private boolean sameShippingAddress  = true;
}
