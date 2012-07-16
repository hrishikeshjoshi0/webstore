package com.openappengine.model.common

import org.apache.commons.lang.StringUtils;
import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.product.Product;

class ImageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [imageInstanceList: Image.list(params), imageInstanceTotal: Image.count()]
    }

    def create() {
        [imageInstance: new Image(params)]
    }

    def save() {
        def imageInstance = new Image(params)
        if (!imageInstance.save(flush: true)) {
            render(view: "create", model: [imageInstance: imageInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
        redirect(action: "show", id: imageInstance.id)
    }
	
	def upload = {
		
	}
	
	def uploadImage = {
		//handle uploaded file
		def uploadedFile = request.getFile('payload')
		if(!uploadedFile.empty){
		  println "Class: ${uploadedFile.class}"
		  println "Name: ${uploadedFile.name}"
		  println "OriginalFileName: ${uploadedFile.originalFilename}"
		  println "Size: ${uploadedFile.size}"
		  println "ContentType: ${uploadedFile.contentType}"
		  
		  //TODO - Replace with a location on the webserver.
		  def userDir = new File("C:\\temp")
		  uploadedFile.transferTo( new File( userDir, uploadedFile.originalFilename))
		  
		  if(params.productId) {
			  Product p = Product.get(params.productId)
			  
			  if(p) {
				  def prefix = ""
				  if(params.imageType) {
					  if(StringUtils.equals(params.imageType, "THUMBNAIL")) {
						  prefix = "THUMB"
					  } else if(StringUtils.equals(params.imageType, "DETAIL")) {
						  prefix = "DET"
					  }
				  }
				  
				  def image = new Image(params)
				  image.imageUrl = prefix + p.pdProductId + "_" + uploadedFile.originalFilename
				  image.save(flush:true)
				  
				  if(StringUtils.equals(params.imageType, "THUMBNAIL")) {
					  p.smallImage = image.imageUrl
				  } else if(StringUtils.equals(params.imageType, "DETAIL")) {
					  p.detailImage = image.imageUrl
				  }
			  }
		  }
		}
	}

    def show() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        [imageInstance: imageInstance]
    }

    def edit() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        [imageInstance: imageInstance]
    }

    def update() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (imageInstance.version > version) {
                imageInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'image.label', default: 'Image')] as Object[],
                          "Another user has updated this Image while you were editing")
                render(view: "edit", model: [imageInstance: imageInstance])
                return
            }
        }

        imageInstance.properties = params

        if (!imageInstance.save(flush: true)) {
            render(view: "edit", model: [imageInstance: imageInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
        redirect(action: "show", id: imageInstance.id)
    }

    def delete() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        try {
            imageInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
