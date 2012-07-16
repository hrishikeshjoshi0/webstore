package webstore.product

import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.product.ProductDiamond;

class DiamondController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [product_DiamondInstanceList: ProductDiamond.list(params), product_DiamondInstanceTotal: ProductDiamond.count()]
    }

    def create() {
        [product_DiamondInstance: new ProductDiamond(params)]
    }

    def save() {
        def product_DiamondInstance = new ProductDiamond(params)
        if (!product_DiamondInstance.save(flush: true)) {
            render(view: "create", model: [product_DiamondInstance: product_DiamondInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), product_DiamondInstance.pdProductId])
        redirect(action: "show", id: product_DiamondInstance.pdProductId)
    }

    def show() {
        def product_DiamondInstance = ProductDiamond.get(params.id)
        if (!product_DiamondInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), params.id])
            redirect(action: "list")
            return
        }

        [product_DiamondInstance: product_DiamondInstance]
    }

    def edit() {
        def product_DiamondInstance = ProductDiamond.get(params.id)
        if (!product_DiamondInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), params.id])
            redirect(action: "list")
            return
        }

        [product_DiamondInstance: product_DiamondInstance]
    }

    def update() {
        def product_DiamondInstance = ProductDiamond.get(params.id)
        if (!product_DiamondInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (product_DiamondInstance.version > version) {
                product_DiamondInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'product_Diamond.label', default: 'Product_Diamond')] as Object[],
                          "Another user has updated this Product_Diamond while you were editing")
                render(view: "edit", model: [product_DiamondInstance: product_DiamondInstance])
                return
            }
        }

        product_DiamondInstance.properties = params

        if (!product_DiamondInstance.save(flush: true)) {
            render(view: "edit", model: [product_DiamondInstance: product_DiamondInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), product_DiamondInstance.id])
        redirect(action: "show", id: product_DiamondInstance.pdProductId)
    }

    def delete() {
        def product_DiamondInstance = ProductDiamond.get(params.id)
        if (!product_DiamondInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), params.id])
            redirect(action: "list")
            return
        }

        try {
            product_DiamondInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product_Diamond.label', default: 'Product_Diamond'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
