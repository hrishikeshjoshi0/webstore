package com.openappengine.model.cart

import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.utils.SessionUtils;

class ShoppingCartController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
		def sessionID = SessionUtils.getSessionId()
		
		def sc = ShoppingCart.findBySessionID(sessionID)
		if(!sc) {
			sc = new ShoppingCart(sessionID:sessionID)
			sc.save(flush:true)
		}
	}
	
	def addToShoppingCart() {
		def sessionID = SessionUtils.getSessionId()
		
		def sc = ShoppingCart.findBySessionID(sessionID)
		if(!sc) {
			sc = new ShoppingCart(sessionID:sessionID)
		}
		
		def sci = new ShoppingCartItem()
		sci.shoppingCart = sc
		
		sci.productId = params.productId
		sci.quantity = params.quantity
		sc.save(flush:true)
		
		render "Added" 
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
}
