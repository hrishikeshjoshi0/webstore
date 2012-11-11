class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
		
		"/login/$action?"(controller: "login")
		"/logout/$action?"(controller: "logout")
		
		name gemstoneProductType : "/gemstones/$productTypeName" {
			controller = 'gemstone'
			action = 'list'
		}
		
		name gemstoneProductType : "/gemstones" {
			controller = 'gemstone'
			action = 'list'
		}
		
		
	}
}
