package com.openappengine.model.product

import org.springframework.dao.DataIntegrityViolationException

class JewelleryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [jewelleryInstanceList: Jewellery.list(params), jewelleryInstanceTotal: Jewellery.count()]
    }

    def create() {
        [jewelleryInstance: new Jewellery(params)]
    }

    def save() {
        def jewelleryInstance = new Jewellery(params)
        if (!jewelleryInstance.save(flush: true)) {
            render(view: "create", model: [jewelleryInstance: jewelleryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), jewelleryInstance.id])
        redirect(action: "show", id: jewelleryInstance.id)
    }

    def show(Long id) {
        def jewelleryInstance = Jewellery.get(id)
        if (!jewelleryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), id])
            redirect(action: "list")
            return
        }

        [jewelleryInstance: jewelleryInstance]
    }

    def edit(Long id) {
        def jewelleryInstance = Jewellery.get(id)
        if (!jewelleryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), id])
            redirect(action: "list")
            return
        }

        [jewelleryInstance: jewelleryInstance]
    }

    def update(Long id, Long version) {
        def jewelleryInstance = Jewellery.get(id)
        if (!jewelleryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (jewelleryInstance.version > version) {
                jewelleryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'jewellery.label', default: 'Jewellery')] as Object[],
                          "Another user has updated this Jewellery while you were editing")
                render(view: "edit", model: [jewelleryInstance: jewelleryInstance])
                return
            }
        }

        jewelleryInstance.properties = params

        if (!jewelleryInstance.save(flush: true)) {
            render(view: "edit", model: [jewelleryInstance: jewelleryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), jewelleryInstance.id])
        redirect(action: "show", id: jewelleryInstance.id)
    }

    def delete(Long id) {
        def jewelleryInstance = Jewellery.get(id)
        if (!jewelleryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), id])
            redirect(action: "list")
            return
        }

        try {
            jewelleryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'jewellery.label', default: 'Jewellery'), id])
            redirect(action: "show", id: id)
        }
    }
}
