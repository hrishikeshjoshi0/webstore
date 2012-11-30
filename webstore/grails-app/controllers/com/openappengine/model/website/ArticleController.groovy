package com.openappengine.model.website

import org.springframework.dao.DataIntegrityViolationException

class ArticleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [articleInstanceList: Article.list(params), articleInstanceTotal: Article.count()]
    }

    def create() {
		params.admin = true
        [articleInstance: new Article(params)]
    }

    def save() {
        def articleInstance = new Article(params)
        if (!articleInstance.save(flush: true)) {
            render(view: "create", model: [articleInstance: articleInstance])
            return
        }

		redirect(controller: "wysiwyg", action: "articleEditor",params: [articleId: articleInstance.articleId])
    }

    def show(Long id) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    def edit(Long id) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        [articleInstance: articleInstance]
    }

    def update(Long id, Long version) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (articleInstance.version > version) {
                articleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'article.label', default: 'Article')] as Object[],
                          "Another user has updated this Article while you were editing")
                render(view: "edit", model: [articleInstance: articleInstance])
                return
            }
        }

        articleInstance.properties = params

        if (!articleInstance.save(flush: true)) {
            render(view: "edit", model: [articleInstance: articleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'article.label', default: 'Article'), articleInstance.id])
        redirect(action: "show", id: articleInstance.id)
    }

    def delete(Long id) {
        def articleInstance = Article.get(id)
        if (!articleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
            return
        }

        try {
            articleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'article.label', default: 'Article'), id])
            redirect(action: "show", id: id)
        }
    }
}
