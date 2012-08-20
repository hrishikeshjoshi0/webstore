package com.openappengine.model.product

import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.common.Image

class DiamondController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		def count = Diamond.count()
		def results = Diamond.list(params)
        [diamondInstanceList: results, diamondInstanceTotal: count]
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
        def parent
		if(!params.parentProductId) {
			parent = ProductCategory.findByProductCategoryName("Diamond")
			if(!parent) {
				parent = new ProductCategory()
				parent.productCategoryName = "Diamond"
				parent.productCategoryDescription = "Diamond"
				parent.fromDate = new Date()
				
				parent.save(flush:true)
			}
			params.parentCategoryId = parent?.productCategoryId
		} else {
			parent = ProductCategory.get(params.parentCategoryId)
		}
		
		def diamondInstance = new Diamond(params)
		diamondInstance.productCategory = parent
		diamondInstance.pdProductCategory = "diamond"
		
		//Init calculated info
		diamondInstance.calculatedInfo = new ProductCalculatedInfo()
		
		diamondInstance.calculatedInfo.save(flush:true)
		
		if (!diamondInstance.save(flush: true)) {
			render(view: "create", model: [diamondInstance: diamondInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), diamondInstance.pdProductId])
		redirect(action:"upload",id: diamondInstance.pdProductId)
    }
	
	def upload = {
	
	}
	
	def uploadImage = {
		def webRootDir = servletContext.getRealPath("/")
		def userDir = new File(webRootDir, "/images/uploads/product")
			
		//TODO
		//userDir = new File("c:\\temp")
		
		//handle uploaded file
		def uploadedFileSmall = request.getFile('payloadSmallImg')
		if(!uploadedFileSmall.empty){
			println "Class: ${uploadedFileSmall.class}"
			println "Name: ${uploadedFileSmall.name}"
			println "OriginalFileName: ${uploadedFileSmall.originalFilename}"
			println "Size: ${uploadedFileSmall.size}"
			println "ContentType: ${uploadedFileSmall.contentType}"
			
			
			if(params.productId) {
				Product p = Product.get(params.productId)

				if(p) {
					def prefix = ""
					prefix = "THUMB"

					def image = new Image(params)
					image.fromDate = new Date()
					image.imageUrl = prefix + "_" + p.pdProductId + "_" + uploadedFileSmall.originalFilename
					
					uploadedFileSmall.transferTo( new File( userDir, image.imageUrl))
					
					image.save(flush:true)

					p.smallImage = image
				}
			}
		}
		
		def uploadedFileMedium = request.getFile('payloadMediumImg')
		if(!uploadedFileMedium.empty){
			println "Class: ${uploadedFileMedium.class}"
			println "Name: ${uploadedFileMedium.name}"
			println "OriginalFileName: ${uploadedFileMedium.originalFilename}"
			println "Size: ${uploadedFileMedium.size}"
			println "ContentType: ${uploadedFileMedium.contentType}"

			if(params.productId) {
				Product p = Product.get(params.productId)

				if(p) {
					def prefix = ""
					prefix = "MEDIUM"

					def image = new Image(params)
					image.fromDate = new Date()
					image.imageUrl = prefix + p.pdProductId + "_" + uploadedFileMedium.originalFilename
					
					uploadedFileMedium.transferTo( new File( userDir, image.imageUrl))
					
					image.save(flush:true)

					p.mediumImage = image
				}
			}
		}

		def uploadedFileLarge = request.getFile('payloadLargeImg')
		if(!uploadedFileLarge.empty){
			println "Class: ${uploadedFileLarge.class}"
			println "Name: ${uploadedFileLarge.name}"
			println "OriginalFileName: ${uploadedFileLarge.originalFilename}"
			println "Size: ${uploadedFileLarge.size}"
			println "ContentType: ${uploadedFileLarge.contentType}"

			if(params.productId) {
				Product p = Product.get(params.productId)

				if(p) {
					def prefix = ""
					prefix = "DET"

					def image = new Image(params)
					image.fromDate = new Date()
					image.imageUrl = prefix + p.pdProductId + "_" + uploadedFileLarge.originalFilename
					
					uploadedFileLarge.transferTo( new File( userDir, image.imageUrl))
					
					image.save(flush:true)

					p.detailImage = image
					p.largeImage = image
				}
			}
		}
		
		redirect(action: "list")
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
