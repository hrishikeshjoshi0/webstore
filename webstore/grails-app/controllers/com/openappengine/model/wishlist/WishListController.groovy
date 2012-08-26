package com.openappengine.model.wishlist

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.context.request.RequestContextHolder

class WishListController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "showWishList", params: params)
    }

    def ajaxGetWishListItemCount() {
		def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
		def wishList = WishList.findBySessionID(sessionID)
		
		if(!wishList) {
			render 0;
			return
		}
		
		render wishList.wishListItems?.size()
	}

    def create() {
        [wishListInstance: new WishList(params)]
    }

    def addToWishList() {
		def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
		def wishListInstance = WishList.findBySessionID(sessionID)
		
		if(!wishListInstance) {
			wishListInstance = new WishList()
			wishListInstance.sessionID = sessionID
			wishListInstance.save(flush: true)
		}
		
		def productId = params.productId;
		if(!productId) {
			render ""
			return
		}
		
		def item = WishListItem.findByWishListAndProductId(wishListInstance,productId)
		if(item) {
			render ""
			return
		}
		
		item = new WishListItem()
		item.wishList = wishListInstance
		item.productId = productId
		item.save(flush:true)
		render ""
    }
	
	def showWishList() {
		def wishlist
		if(params.id) {
			wishlist = WishList.get(params.id)
			if (!wishlist) {
				//TODO
				return
			}
		 } else {
			 def sessionID = RequestContextHolder.getRequestAttributes()?.getSessionId()
			 wishlist = WishList.findBySessionID(sessionID)
			 if(!wishlist) {
				 wishlist = new WishList(sessionID:sessionID)
				 wishlist.save(flush:true)
			 }
		 }
		 [wishList: wishlist]
	}

    def show() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "showWishList")
            return
        }

        [wishListInstance: wishListInstance]
    }

    def edit() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "showWishList")
            return
        }

        [wishListInstance: wishListInstance]
    }

    def update() {
        def wishListInstance = WishList.get(params.id)
        if (!wishListInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "showWishList")
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
            redirect(action: "showWishList")
            return
        }

        try {
            wishListInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "showWishList")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'wishList.label', default: 'WishList'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
