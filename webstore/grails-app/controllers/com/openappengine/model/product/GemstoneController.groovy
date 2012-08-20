package com.openappengine.model.product

import org.apache.commons.lang.StringUtils
import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.enums.SortOrder
import com.openappengine.model.common.Image

class GemstoneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = 9
		def c = Gemstone.createCriteria()
		def sortBy = params.sortBy
		def productTypeId = params.productTypeId
		
		params.pageHeader = "Featured Gemstones"
		
		if(!sortBy) {
			sortBy = "NEW_ARRIVALS"
		}
		
		if(!params.offset) {
			params.offset = 0
		}
		
		if(!params.minPrice) {
			params.minPrice = 0
		}
		
		if(!params.maxPrice) {
			params.maxPrice = 10000
		}
		
		params.sortBy = sortBy
		params.productTypeId = productTypeId
		
		def gemstones = new ArrayList<Product>();
		
		gemstones = c.list {
			createAlias('prodProductPrices', 'price')
			
			between("price.ppPrice",params.minPrice.toBigDecimal(),params.maxPrice.toBigDecimal())
			
			//Filter
			if(productTypeId) {
				def productType = ProductType.get(params.productTypeId)
				eq("productType",productType)
			}
			
			//Order
			if(sortBy.equals("HIGHEST_PRICE")) {
				order("price.ppPrice", "desc")
			} else if(StringUtils.equals(sortBy, "NEW_ARRIVALS")) {
				order("pdIntroductionDate", "desc")
			} else if(StringUtils.equals(sortBy, "LOWEST_PRICE")) {
				order("price.ppPrice", "asc")
			} else if(StringUtils.equals(sortBy, "MOST_POPULAR")) {
				createAlias('calculatedInfo', 'calculatedInfo')
				order("calculatedInfo.timesViewed", "desc")
			} else if(StringUtils.equals(sortBy, "BEST_RATINGS")) {
				createAlias('calculatedInfo', 'calculatedInfo')
				order("calculatedInfo.averageCustomerRating", "desc")
			}
			firstResult(params.offset)
			maxResults(params.max)
		}
		
		def minPrice = Gemstone.createCriteria().get {
			createAlias('prodProductPrices', 'price')
			
			//Filter
			if(productTypeId) {
				def productType = ProductType.get(params.productTypeId)
				eq("productType",productType)
			}
			
			projections {
				min("price.ppPrice")
			}
		}
		
		def maxPrice = Gemstone.createCriteria().get {
			createAlias('prodProductPrices', 'price')
			
			//Filter
			if(productTypeId) {
				def productType = ProductType.get(params.productTypeId)
				eq("productType",productType)
			}
			
			projections {
				max("price.ppPrice")
			}
		}
		
		if(productTypeId) {
			params.pageHeader = ProductType.get(params.productTypeId)?.productTypeName
		}
		
		params.minPrice = minPrice
		params.maxPrice = maxPrice
		
		def model = [prodGemstoneInstanceList: gemstones, prodGemstoneInstanceTotal: gemstones.size()]
		
		if (request.xhr) {
			// ajax request
			render(template: "grid", model: model)
		} else {
			model
		}
        
    }
	
	def viewFeatures = {
		println(params.id)
		def prodGemstoneInstance = Gemstone.get(params.id)
		if (!prodGemstoneInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), params.id])
			redirect(action: "list")
			return
		}

		def model = [prodGemstoneInstance: prodGemstoneInstance]
		
		if (request.xhr) {
			// ajax request
			render(template: "features", model: model)
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
		prodGemstoneInstance.pdProductCategory = "gemstone"
		
		//Init calculated info
		prodGemstoneInstance.calculatedInfo = new ProductCalculatedInfo()
		prodGemstoneInstance.calculatedInfo.save(flush:true)
		
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
		
		if(prodGemstoneInstance?.calculatedInfo) {
			def timesViewed = prodGemstoneInstance?.calculatedInfo.timesViewed
			prodGemstoneInstance?.calculatedInfo.timesViewed = timesViewed + 1
			prodGemstoneInstance?.calculatedInfo.save(flush:true)
		}
		
		[prodGemstoneInstance: prodGemstoneInstance]
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
