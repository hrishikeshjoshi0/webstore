package com.openappengine.model.product

import org.apache.commons.lang.StringUtils
import org.springframework.dao.DataIntegrityViolationException

import com.openappengine.model.common.Image

class JewelleryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
		params.max = 9
		
        //params.max = Math.min(params.max ?: 10, 100)
		def p = params;
		
		def selectedGenders = params.sexFilter
		def selectedMetals = params.metalFilter
		
		def genders = null 
		def metals = null
		
		if(selectedGenders) {
			genders = selectedGenders.split("_")
		}
		
		if(selectedMetals) {
			metals = selectedMetals.split("_")
		}
		
		//Create a criteria query and form the result
		def c = Jewellery.createCriteria()
		def sortBy = params.sortBy
		def productTypeName = params.productTypeName
		def productCat1 = params.productCat1

		params.pageHeader = "Featured Jewellery"

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
		params.productTypeName = productTypeName
		
		
		def result
		def gemstones = new ArrayList<Product>();
		
		result = c.list {
			createAlias('prodProductPrices', 'price')
		
			between("price.ppPrice",params.minPrice.toBigDecimal(),params.maxPrice.toBigDecimal())
		
			//Filter
			/*if(productTypeName) {
				def productType = ProductType.findByProductTypeName(params.productTypeName)
				eq("productType",productType)
			}
		
			if(productCat1) {
				eq("cat1",productCat1)
			}*/
			
			if(genders) {
				'in'("gender",genders)
			} else {
				eq("gender","any")
			}
			
			if(metals) {
				'in'("metal",metals)
			}
		
			//Order
			if(sortBy.equals("HIGHEST_PRICE")) {
				order("price.ppPrice", "desc")
			} else if(sortBy.equals("NEW_ARRIVALS")) {
				order("pdIntroductionDate", "desc")
			} else if(sortBy.equals("LOWEST_PRICE")) {
				order("price.ppPrice", "asc")
			} else if(sortBy.equals("MOST_POPULAR")) {
				createAlias('calculatedInfo', 'calculatedInfo')
				order("calculatedInfo.timesViewed", "desc")
			} else if(sortBy.equals("BEST_RATINGS")) {
				createAlias('calculatedInfo', 'calculatedInfo')
				order("calculatedInfo.averageCustomerRating", "desc")
			}
			
			firstResult(params.offset)
			maxResults(params.max)
		}
		
		
        [jewelleryInstanceList: result, jewelleryInstanceTotal: result.size()]
    }

    def create() {
        [jewelleryInstance: new Jewellery(params)]
    }

    def save() {
		def parent
		if(!params.parentProductId) {
			parent = ProductCategory.findByProductCategoryName("Jewellery")
			if(!parent) {
				parent = new ProductCategory()
				parent.productCategoryName = "Jewellery"
				parent.productCategoryDescription = "Jewellery"
				parent.fromDate = new Date()

				parent.save(flush:true)
			}
			params.parentCategoryId = parent?.productCategoryId
		} else {
			parent = ProductCategory.get(params.parentCategoryId)
		}
		
		def jewelleryInstance = new Jewellery(params)
		jewelleryInstance.productCategory = parent
		jewelleryInstance.pdProductCategory = "jewellery"

		//Init calculated info
		jewelleryInstance.calculatedInfo = new ProductCalculatedInfo()
		jewelleryInstance.calculatedInfo.save(flush:true)

		flash.message = message(code: 'default.created.message', args: [message(code: 'prodGemstone.label', default: 'ProdGemstone'), jewelleryInstance.pdProductId])
		redirect(action:"upload",id: jewelleryInstance.pdProductId)
		
        if (!jewelleryInstance.save(flush: true)) {
            render(view: "create", model: [jewelleryInstance: jewelleryInstance])
            return
        }
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

		def productId = params.productId
		params.productId = productId
		
		redirect(controller:"productPrice", action: "list",params:params)
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
