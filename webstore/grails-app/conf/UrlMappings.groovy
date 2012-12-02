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
			
			name gemstoneCat1 : "/gemstones/$productTypeName/$productCat1" {
				controller = 'gemstone'
				action = 'list'
			}
			
			name gemstoneProductType : "/gemstones" {
				controller = 'gemstone'
				action = 'list'
			}
			
			name gemstoneProductDetail : "/gemstones-detail/$productName" {
				controller = 'gemstone'
				action = 'viewDetails'
			}
			
			//Jewellery
			name jewelleryProductType : "/jewelleries/$productTypeName" {
				controller = 'jewellery'
				action = 'list'
			}
			
			name jewelleryCat1 : "/jewelleries/$productTypeName/$productCat1" {
				controller = 'jewellery'
				action = 'list'
			}
			
			name jewelleryProductType : "/jewelleries" {
				controller = 'jewellery'
				action = 'list'
			}
			name jewelleryProductDetail : "/jewellery-detail/$productName" {
				controller = 'jewellery'
				action = 'viewDetails'
			}
			
			"/jewellery-edit/create" {
				controller = 'jewellery'
				action = 'create'
			}
			
			"/jewellery-edit/save" {
				controller = 'jewellery'
				action = 'save'
			}
			
			name jewelleryEdit : "/jewellery-edit/edit" {
				controller = 'jewellery'
				action = 'edit'
			}
			
			"/gemstone-edit/create" {
				controller = 'gemstone'
				action = 'create'
			}
			
			"/gemstone-edit/save" {
				controller = 'gemstone'
				action = 'save'
			}
			
			name gemstoneEdit : "/gemstone-edit/edit" {
				controller = 'gemstone'
				action = 'edit'
			}

			name articlesMapping : "/articles/$title" {
				controller = 'article'
				action = 'showArticle'
			}
		}
	}
	
