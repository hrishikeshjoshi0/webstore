package com.openappengine.model.wishlist

import org.springframework.dao.DataIntegrityViolationException

class WishListController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [wishListInstanceList: WishList.list(params), wishListInstanceTotal: WishList.count()]
    }

    def create() {
        [wishListInstance: new WishList(params)]
    }

    def save() {
        def wishListInstance = new WishList(params)
        if (!wishListInstance.save(flush: true)) {
            render(view: "create", model: [wishListInstance: wishListInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'wishList.label', default: 'WishList'), wishListInstance.id])
        redirect(action: "show", id: wishListInstance.id)
    }

    def show() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "list")
            return
        }

        [wishListInstance: wishListInstance]
    }

    def edit() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "list")
            return
        }

        [wishListInstance: wishListInstance]
    }

    def update() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (wishListInstance.version > version) {
                wishListInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'wishList.label', default: 'WishList')] as Object[],
                          "Another user has updated this WishList while you were editing")
                render(view: "edit", model: [wishListInstance: wishListInstance])
                return
            }
        }

        wishListInstance.properties = params

        if (!wishListInstance.save(flush: true)) {
            render(view: "edit", model: [wishListInstance: wishListInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'wishList.label', default: 'WishList'), wishListInstance.id])
        redirect(action: "show", id: wishListInstance.id)
    }

    def delete() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "list")
            return
        }

        try {
            wishListInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
