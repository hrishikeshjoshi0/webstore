package com.openappengine.model.product

import org.springframework.dao.DataIntegrityViolationException

class ProductTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productTypeInstanceList: ProductType.list(params), productTypeInstanceTotal: ProductType.count()]
    }

    def create() {
		
		def parent
		
		if(!params.parentProductId) {
			parent = ProductType.findByProductTypeName("root")
			if(!parent) {
				parent = new ProductType()
				parent.productTypeName = "root"
				parent.productTypeDescription = "root"
				parent.fromDate = new Date()
				
				parent.save(flush:true)
			}
			params.parentTypeId = parent?.productTypeId
		}
		
        [productTypeInstance: new ProductType(params)]
    }

    def save() {
		def parent;
		if(!params.parentProductId) {
			parent = ProductType.findByProductTypeName("root")
			if(!parent) {
				parent = new ProductType()
				parent.productTypeName = "root"
				parent.productTypeDescription = "root"
				parent.fromDate = new Date()
				
				parent.save(flush:true)
			}	
		} else {
			parent = ProductType.get(params.parentProductId)
		}
		
        def productTypeInstance = new ProductType(params)
		productTypeInstance.parentType = parent
		
        if (!productTypeInstance.save(flush: true)) {
            render(view: "create", model: [productTypeInstance: productTypeInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'productType.label', default: 'ProductType'), productTypeInstance.productTypeId])
        redirect(action: "show", id: productTypeInstance.productTypeId)
    }

    def show() {
        def productTypeInstance = ProductType.get(params.id)
        if (!productTypeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productType.label', default: 'ProductType'), params.id])
            redirect(action: "list")
            return
        }

        [productTypeInstance: productTypeInstance]
    }

    def edit() {
        def productTypeInstance = ProductType.get(params.id)
        if (!productTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productType.label', default: 'ProductType'), params.id])
            redirect(action: "list")
            return
        }

        [productTypeInstance: productTypeInstance]
    }

    def update() {
        def productTypeInstance = ProductType.get(params.id)
        if (!productTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productType.label', default: 'ProductType'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (productTypeInstance.version > version) {
                productTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'productType.label', default: 'ProductType')] as Object[],
                          "Another user has updated this ProductType while you were editing")
                render(view: "edit", model: [productTypeInstance: productTypeInstance])
                return
            }
        }

        productTypeInstance.properties = params

        if (!productTypeInstance.save(flush: true)) {
            render(view: "edit", model: [productTypeInstance: productTypeInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'productType.label', default: 'ProductType'), productTypeInstance.productTypeId])
        redirect(action: "show", id: productTypeInstance.productTypeId)
    }

    def delete() {
        def productTypeInstance = ProductType.get(params.id)
        if (!productTypeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productType.label', default: 'ProductType'), params.id])
            redirect(action: "list")
            return
        }

        try {
            productTypeInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'productType.label', default: 'ProductType'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productType.label', default: 'ProductType'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
