package com.openappengine.cms

import com.openappengine.model.cms.Content

class WysiwygController {

    def editor() { 
		params.admin = true
	}
	
	def saveText() {
		println(params.cmsData)
		def content = new Content()
		content.data = params.cmsData
		content.save(flush:true)
	}
}
