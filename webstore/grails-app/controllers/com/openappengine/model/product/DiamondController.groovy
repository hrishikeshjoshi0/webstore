package com.openappengine.model.product
import grails.converters.JSON
import grails.converters.JSON.*

import org.apache.commons.lang.StringUtils
import org.codehaus.groovy.grails.web.json.JSONArray
import org.codehaus.groovy.grails.web.json.JSONObject
import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.common.Image

class DiamondController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def list() {
		params.max = 9
		def a = params.Roundcheckbox.toString()
		def c = Diamond.createCriteria()
		def sortBy = params.sortBy
		def productTypeId = params.productTypeId
		
		params.pageHeader = "Featured Diamonds"
		
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
		
		/*if(!params.minCarat) {
			params.minCarat = 1
		}
		
		if(!params.maxCarat) {
			params.maxCarat = 15
		}*/
		
		params.sortBy = sortBy
		params.productTypeId = productTypeId
		
		def diamonds = new ArrayList<Product>();
		
		diamonds = c.list {
			createAlias('prodProductPrices', 'price')
			
			//Carat
			if(params.minPrice && params.maxPrice) {
				between("price.ppPrice",params.minPrice.toBigDecimal(),params.maxPrice.toBigDecimal())
			}
			
			//Carat
			if(params.minCarat && params.maxCarat) {
				between("carat",params.minCarat.toBigDecimal(),params.maxCarat.toBigDecimal())
			}
			
			//Color
			if(params.minColor && params.maxColor) {
				between("color",params.minColor.toBigDecimal(),params.maxColor.toBigDecimal())
			}
			
			//Cut
			if(params.minCut && params.maxCut) {
				between("cut",params.minCut.toBigDecimal(),params.maxCut.toBigDecimal())
			}
			
			//Clarity
			if(params.minClarity && params.maxClarity) {
				between("clarity",params.minClarity.toBigDecimal(),params.maxClarity.toBigDecimal())
			}
			
			firstResult(params.offset)
			maxResults(params.max)
		}
		
		def minPrice = Diamond.createCriteria().get {
			createAlias('prodProductPrices', 'price')
			
			projections {
				min("price.ppPrice")
			}
		}
		
		def maxPrice = Diamond.createCriteria().get {
			createAlias('prodProductPrices', 'price')
			
			projections {
				max("price.ppPrice")
			}
		}
		
		params.minPrice = minPrice
		params.maxPrice = maxPrice
		
		
		//Carat
		if(!params.caratFilterMin) {
			params.caratFilterMin = 0
		}
		
		if(!params.caratFilterMax) {
			params.caratFilterMax = 15
		}
		
		//Color
		if(!params.colorFilterMin) {
			params.colorFilterMin = 1
		}
		
		if(!params.colorFilterMax) {
			params.colorFilterMax = 7
		}
		
		//Cut
		if(!params.cutFilterMin) {
			params.cutFilterMin = 1
		}
		
		if(!params.cutFilterMax) {
			params.cutFilterMax = 5
		}
		
		//Clarity
		if(!params.clarityFilterMin) {
			params.clarityFilterMin = 1
		}
		
		if(!params.clarityFilterMax) {
			params.clarityFilterMax = 9
		}
		
		def model = [diamondList: diamonds, diamondListTotal: diamonds.size()]
		
		if (request.xhr) {
			// ajax request
			render(template: "grid", model: model)
		} else {
			model
		}
	}
	
    def list1() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		
		params.caratFilterMin = 0
		params.caratFilterMax = 15
		
		params.colorFilterMin = 1
		params.colorFilterMax = 7
		
		params.priceFilterMin = 1
		params.priceFilterMax = 1000
		
		params.cutFilterMin = 1
		params.cutFilterMax = 5
		
		params.clarityFilterMin = 1
		params.clarityFilterMax = 9
		
		def count = Diamond.count()
		def results = Diamond.list(params)
		params.pageHeader = "Featured Diamonds"
        [diamondList: results, diamondListTotal: count]
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
	
	def viewDetailDiamond = {
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
	
	def diamondUploadData = {
		}
	
	def diamondJsonGet = {
		def a = params.toString()
		def b = request.toString()
		def c = request.JSON
		
		json.lob.TESTING.each {item->
		  println "Name: ${item.name} - Value: ${item.value}"
		}
		def d
			
		
		}
	
	def diamondJsonSave = {
		Diamond d = Diamond.get(params.id)
		def result = [diamond: d]
		
		render result as JSON
		}
	
	def shipping = {
		
	}
	
}
