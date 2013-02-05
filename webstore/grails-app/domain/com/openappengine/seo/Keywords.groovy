package com.openappengine.seo

class Keywords {

	String page 
	String title
	String keyword
	String description
	
    static constraints = {
		page unique:true
		title nullable: true
		keyword nullable: true
		description nullable: true
    }
}

