package com.openappengine.model.product

import org.springframework.dao.DataIntegrityViolationException

class DiamondController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [diamondInstanceList: Diamond.list(params), diamondInstanceTotal: Diamond.count()]
    }
	
	def viewDetails = {
		def prodDiamondInstance = Diamond.get(params.id)
		if (!prodDiamondInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodDiamond.label', default: 'prodDiamond'), params.id])
			redirect(action: "list")
			return
		}
		
		if(prodDiamondInstance?.calculatedInfo) {
			def timesViewed = prodDiamondInstance?.calculatedInfo.timesViewed
			prodDiamondInstance?.calculatedInfo.timesViewed = timesViewed + 1
			prodDiamondInstance?.calculatedInfo.save(flush:true)
		}
		
		[prodDiamondInstance: prodDiamondInstance]
	}
	
	def viewFeatures = {
		println(params.id)
		def prodDiamondInstance = Diamond.get(params.id)
		if (!prodDiamondInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
			redirect(action: "list")
			return
		}

		def model = [prodDiamondInstance: prodDiamondInstance]
		
		if (request.xhr) {
			// ajax request
			render(template: "features", model: model)
		} else {
			model
		}
	}

    def create() {
        [diamondInstance: new Diamond(params)]
    }

    def save() {
        def diamondInstance = new Diamond(params)
        if (!diamondInstance.save(flush: true)) {
            render(view: "create", model: [diamondInstance: diamondInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'diamond.label', default: 'Diamond'), diamondInstance.id])
        redirect(action: "show", id: diamondInstance.id)
    }

    def show() {
        def diamondInstance = Diamond.get(params.id)
        if (!diamondInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'diamond.label', default: 'Diamond'), params.id])
            redirect(action: "list")
            return
        }

        [diamondInstance: diamondInstance]
    }

    def edit() {
        def diamondInstance = Diamond.get(params.id)
        if (!diamondInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diamond.label', default: 'Diamond'), params.id])
            redirect(action: "list")
            return
        }

        [diamondInstance: diamondInstance]
    }

    def update() {
        def diamondInstance = Diamond.get(params.id)
        if (!diamondInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diamond.label', default: 'Diamond'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (diamondInstance.version > version) {
                diamondInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'diamond.label', default: 'Diamond')] as Object[],
                          "Another user has updated this Diamond while you were editing")
                render(view: "edit", model: [diamondInstance: diamondInstance])
                return
            }
        }

        diamondInstance.properties = params

        if (!diamondInstance.save(flush: true)) {
            render(view: "edit", model: [diamondInstance: diamondInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'diamond.label', default: 'Diamond'), diamondInstance.id])
        redirect(action: "show", id: diamondInstance.id)
    }

    def delete() {
        def diamondInstance = Diamond.get(params.id)
        if (!diamondInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'diamond.label', default: 'Diamond'), params.id])
            redirect(action: "list")
            return
        }

        try {
            diamondInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'diamond.label', default: 'Diamond'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'diamond.label', default: 'Diamond'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
