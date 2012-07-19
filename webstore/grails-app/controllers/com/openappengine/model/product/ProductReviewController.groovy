package com.openappengine.model.product

import org.springframework.dao.DataIntegrityViolationException

class ProductReviewController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productReviewInstanceList: ProductReview.list(params), productReviewInstanceTotal: ProductReview.count()]
    }

    def create() {
		def productReview = new ProductReview(params);
		if(params.productId) {
			def product = Product.get(params.productId)
			productReview.product = product
		}
        [productReviewInstance: productReview]
    }

    def save() {
        def productReviewInstance = new ProductReview(params)
        if (!productReviewInstance.save(flush: true)) {
            render(view: "create", model: [productReviewInstance: productReviewInstance])
            return
        }

		if(params.productId) {
			def product = Product.get(params.productId)
			productReview.product = product
		}
		params.id =  params.productId
        redirect(action: "viewDetails", controller: "gemstone",id: params.productId)
    }

    def show() {
        def productReviewInstance = ProductReview.get(params.id)
        if (!productReviewInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productReview.label', default: 'ProductReview'), params.id])
            redirect(action: "list")
            return
        }

        [productReviewInstance: productReviewInstance]
    }

    def edit() {
        def productReviewInstance = ProductReview.get(params.id)
        if (!productReviewInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productReview.label', default: 'ProductReview'), params.id])
            redirect(action: "list")
            return
        }

        [productReviewInstance: productReviewInstance]
    }

    def update() {
        def productReviewInstance = ProductReview.get(params.id)
        if (!productReviewInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productReview.label', default: 'ProductReview'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (productReviewInstance.version > version) {
                productReviewInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'productReview.label', default: 'ProductReview')] as Object[],
                          "Another user has updated this ProductReview while you were editing")
                render(view: "edit", model: [productReviewInstance: productReviewInstance])
                return
            }
        }

        productReviewInstance.properties = params

        if (!productReviewInstance.save(flush: true)) {
            render(view: "edit", model: [productReviewInstance: productReviewInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'productReview.label', default: 'ProductReview'), productReviewInstance.productReviewId])
        redirect(action: "show", id: productReviewInstance.productReviewId)
    }

    def delete() {
        def productReviewInstance = ProductReview.get(params.id)
        if (!productReviewInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'productReview.label', default: 'ProductReview'), params.id])
            redirect(action: "list")
            return
        }

        try {
            productReviewInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'productReview.label', default: 'ProductReview'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productReview.label', default: 'ProductReview'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
