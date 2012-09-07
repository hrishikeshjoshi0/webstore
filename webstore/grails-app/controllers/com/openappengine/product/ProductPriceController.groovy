package com.openappengine.product

import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.product.ProdProductPrice
import com.openappengine.model.product.Product;

class ProductPriceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		def priceList
		if(params.productId) {
			Product product = Product.get(params.productId.toInteger())
			priceList = product?.prodProductPrices
		}
		
        int total
		if(!priceList) {
			total = 0
		} else {
			total = priceList?.size()
		}
		
        [prodProductPriceInstanceList: priceList, prodProductPriceInstanceTotal: total]
    }

    def create() {
        [prodProductPriceInstance: new ProdProductPrice(params)]
    }

    def save() {
        def prodProductPriceInstance = new ProdProductPrice(params)
		prodProductPriceInstance.prodProduct = Product.get(params.productId)
		
		def c = ProdProductPrice.createCriteria()
		def productPrices = c.list {
			eq("prodProduct",prodProductPriceInstance.prodProduct)
			ge("ppFromDate",prodProductPriceInstance.ppFromDate)
			le("ppToDate",prodProductPriceInstance.ppToDate)
		}
		
		if(productPrices) {
			flash.message = message(code: 'default.not.found.message', 
						args: [message(code: 'prodProductPrice.label', default: 'Prices overlap found.')])
			return
		}
		
        if (!prodProductPriceInstance.save(flush: true)) {
            render(view: "create", model: [prodProductPriceInstance: prodProductPriceInstance])
            return
        }

		def productId = params.productId
		redirect(action: "list", params :[productId : productId])
    }

    def show() {
        def prodProductPriceInstance = ProdProductPrice.get(params.id)
        if (!prodProductPriceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), params.id])
            redirect(action: "list")
            return
        }

        [prodProductPriceInstance: prodProductPriceInstance]
    }

    def edit() {
        def prodProductPriceInstance = ProdProductPrice.get(params.id)
        if (!prodProductPriceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), params.id])
            redirect(action: "list")
            return
        }

        [prodProductPriceInstance: prodProductPriceInstance]
    }

    def update() {
        def prodProductPriceInstance = ProdProductPrice.get(params.id)
        if (!prodProductPriceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (prodProductPriceInstance.version > version) {
                prodProductPriceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'prodProductPrice.label', default: 'ProdProductPrice')] as Object[],
                          "Another user has updated this ProdProductPrice while you were editing")
                render(view: "edit", model: [prodProductPriceInstance: prodProductPriceInstance])
                return
            }
        }

        prodProductPriceInstance.properties = params

        if (!prodProductPriceInstance.save(flush: true)) {
            render(view: "edit", model: [prodProductPriceInstance: prodProductPriceInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), prodProductPriceInstance.id])
        redirect(action: "show", id: prodProductPriceInstance.id)
    }

    def delete() {
        def prodProductPriceInstance = ProdProductPrice.get(params.id)
        if (!prodProductPriceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), params.id])
            redirect(action: "list")
            return
        }

        try {
            prodProductPriceInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'prodProductPrice.label', default: 'ProdProductPrice'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
