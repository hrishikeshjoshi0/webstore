package com.openappengine.cms

import com.openappengine.model.cms.Content
import com.openappengine.model.website.Article

class WysiwygController {

    def editor() { 
		params.admin = true
	}
	
	def saveText() {
		println(params.cmsData)
		def content = new Content()
		content.data = params.cmsData
		content.save(flush:true)
		
		if(params.articleId) {
			def article = Article.get(params.articleId)
			article.content = content
			article.save(flush:true)
		}
	}
	
	def articleEditor() {
		params.admin = true
		if(!params.articleId) {
			return
		}
		
		def article = Article.get(params.articleId)
		[article:article]
	}
	
}
