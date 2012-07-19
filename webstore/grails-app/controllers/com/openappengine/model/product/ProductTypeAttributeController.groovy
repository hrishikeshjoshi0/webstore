package com.openappengine.model.product

import org.springframework.dao.DataIntegrityViolationException

class ProductTypeAttributeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productTypeAttributeInstanceList: ProductTypeAttribute.list(params), productTypeAttributeInstanceTotal: ProductTypeAttribute.count()]
    }

    def create() {
    	def productTypeAttribute = new ProductTypeAttribute(params);
		
		if(params.productTypeId) {
			def productType = ProductType.get(params.productTypeId.toInteger())
			productTypeAttribute.productType = productType
		}
		
        [productTypeAttributeInstance: productTypeAttribute]
    }

    def save() {
        def productTypeAttributeInstance = new ProductTypeAttribute(params)
        if (!productTypeAttributeInstance.save(flush: true)) {
            render(view: "create", model: [productTypeAttributeInstance: productTypeAttributeInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), productTypeAttributeInstance.productTypeAttributeId])
        redirect(action: "show", id: productTypeAttributeInstance.productTypeAttributeId)
    }

    def show() {
        def productTypeAttributeInstance = ProductTypeAttribute.get(params.id)
        if (!productTypeAttributeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), params.id])
            redirect(action: "list")
            return
        }

        [productTypeAttributeInstance: productTypeAttributeInstance]
    }

    def edit() {
        def productTypeAttributeInstance = ProductTypeAttribute.get(params.id)
        if (!productTypeAttributeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), params.id])
            redirect(action: "list")
            return
        }

        [productTypeAttributeInstance: productTypeAttributeInstance]
    }

    def update() {
        def productTypeAttributeInstance = ProductTypeAttribute.get(params.id)
        if (!productTypeAttributeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (productTypeAttributeInstance.version > version) {
                productTypeAttributeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute')] as Object[],
                          "Another user has updated this ProductTypeAttribute while you were editing")
                render(view: "edit", model: [productTypeAttributeInstance: productTypeAttributeInstance])
                return
            }
        }

        productTypeAttributeInstance.properties = params

        if (!productTypeAttributeInstance.save(flush: true)) {
            render(view: "edit", model: [productTypeAttributeInstance: productTypeAttributeInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), productTypeAttributeInstance.productTypeAttributeId])
        redirect(action: "show", id: productTypeAttributeInstance.productTypeAttributeId)
    }

    def delete() {
        def productTypeAttributeInstance = ProductTypeAttribute.get(params.id)
        if (!productTypeAttributeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), params.id])
            redirect(action: "list")
            return
        }

        try {
            productTypeAttributeInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
