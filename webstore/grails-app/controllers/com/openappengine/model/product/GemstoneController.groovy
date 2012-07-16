package com.openappengine.model.product

import org.apache.commons.lang.StringUtils
import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.common.Image

class GemstoneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = 9
		
		def model = [prodGemstoneInstanceList: Gemstone.list(params), prodGemstoneInstanceTotal: Gemstone.count()]
		
		if (request.xhr) {
			// ajax request
			render(template: "grid", model: model)
		} else {
			model
		}
        
    }

    def create() {
        [prodGemstoneInstance: new Gemstone(params)]
    }

    def save() {
		def parent
		if(!params.parentProductId) {
			parent = ProductCategory.findByProductCategoryName("Gemstone")
			if(!parent) {
				parent = new ProductCategory()
				parent.productCategoryName = "Gemstone"
				parent.productCategoryDescription = "Gemstone"
				parent.fromDate = new Date()
				
				parent.save(flush:true)
			}
			params.parentCategoryId = parent?.productCategoryId
		} else {
			parent = ProductCategory.get(params.parentCategoryId)
		}
		
        def prodGemstoneInstance = new Gemstone(params)
		prodGemstoneInstance.productCategory = parent
		
        if (!prodGemstoneInstance.save(flush: true)) {
            render(view: "create", model: [prodGemstoneInstance: prodGemstoneInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), prodGemstoneInstance.pdProductId])
		redirect(action:"upload",id: prodGemstoneInstance.pdProductId)
    }
	
	def upload = {
		
	}
	
	def viewDetails = {
		def prodGemstoneInstance = Gemstone.get(params.id)
		if (!prodGemstoneInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
			redirect(action: "list")
			return
		}

		[prodGemstoneInstance: prodGemstoneInstance]
	}
	
	def uploadImage = {
		def webRootDir = servletContext.getRealPath("/")
		def userDir = new File(webRootDir, "/images/uploads/product")
			
		//TODO
		//userDir = new File("c:\\temp")
		
		//handle uploaded file
		def uploadedFileThumbnail = request.getFile('payloadThumbnailImg')
		if(!uploadedFileThumbnail.empty){
			println "Class: ${uploadedFileThumbnail.class}"
			println "Name: ${uploadedFileThumbnail.name}"
			println "OriginalFileName: ${uploadedFileThumbnail.originalFilename}"
			println "Size: ${uploadedFileThumbnail.size}"
			println "ContentType: ${uploadedFileThumbnail.contentType}"
			
			
			if(params.productId) {
				Product p = Product.get(params.productId)

				if(p) {
					def prefix = ""
					prefix = "THUMB"

					def image = new Image(params)
					image.fromDate = new Date()
					image.imageUrl = prefix + "_" + p.pdProductId + "_" + uploadedFileThumbnail.originalFilename
					
					uploadedFileThumbnail.transferTo( new File( userDir, image.imageUrl))
					
					image.save(flush:true)

					p.smallImage = image
				}
			}
		}

		def uploadedFileDetail = request.getFile('payloadDetailImg')
		if(!uploadedFileDetail.empty){
			println "Class: ${uploadedFileDetail.class}"
			println "Name: ${uploadedFileDetail.name}"
			println "OriginalFileName: ${uploadedFileDetail.originalFilename}"
			println "Size: ${uploadedFileDetail.size}"
			println "ContentType: ${uploadedFileDetail.contentType}"

			if(params.productId) {
				Product p = Product.get(params.productId)

				if(p) {
					def prefix = ""
					prefix = "DET"

					def image = new Image(params)
					image.fromDate = new Date()
					image.imageUrl = prefix + p.pdProductId + "_" + uploadedFileDetail.originalFilename
					
					uploadedFileDetail.transferTo( new File( userDir, image.imageUrl))
					
					image.save(flush:true)

					p.detailImage = image
				}
			}
		}
		
		redirect(action: "list")
	}
	
	def showImage  = {
		
	}

    def show() {
        def prodGemstoneInstance = Gemstone.get(params.id)
        if (!prodGemstoneInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
            redirect(action: "list")
            return
        }

        [prodGemstoneInstance: prodGemstoneInstance]
    }

    def edit() {
        def prodGemstoneInstance = Gemstone.get(params.id)
        if (!prodGemstoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
            redirect(action: "list")
            return
        }

        [prodGemstoneInstance: prodGemstoneInstance]
    }

    def update() {
        def prodGemstoneInstance = Gemstone.get(params.id)
        if (!prodGemstoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (prodGemstoneInstance.version > version) {
                prodGemstoneInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'prodGemstone.label', default: 'ProdGemstone')] as Object[],
                          "Another user has updated this ProdGemstone while you were editing")
                render(view: "edit", model: [prodGemstoneInstance: prodGemstoneInstance])
                return
            }
        }

        prodGemstoneInstance.properties = params

        if (!prodGemstoneInstance.save(flush: true)) {
            render(view: "edit", model: [prodGemstoneInstance: prodGemstoneInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), prodGemstoneInstance.id])
        redirect(action: "show", id: prodGemstoneInstance.id)
    }

    def delete() {
        def prodGemstoneInstance = Gemstone.get(params.id)
        if (!prodGemstoneInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
            redirect(action: "list")
            return
        }

        try {
            prodGemstoneInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
