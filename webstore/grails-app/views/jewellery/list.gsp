<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Jewellery</title>
<script type="text/javascript">
	$(document).ready(function() {
		//CSS
		$('.result-box-small').hover(
		  function () {
		    $(this).addClass('dropShadow');
		  }, 
		  function () {
			  $(this).removeClass('dropShadow');
		  }
		);	
	
		//
   		setupGridAjax();
   		setupPriceSlider();

   		//Get Product Types.
	    $.ajax({
	        type: 'GET',
	        url: "<g:createLink controller='product' action='ajaxGetCategoryTypes' />" 
		        	+ "?productCategory=" + "jewellery"
		        	+ "&template=" + "/jewellery/productTypes",
	        success: function(data) {
	            $('#productTypes').html(data);
	        }
	    });

        //  Initialize xBreadcrumbs
        //$('#breadcrumbs-1').xBreadcrumbs();

        //Initialize Checkbox events
	    $('.metalFilterCheckbox').change(function(){

		   	var selectedCheckboxes = "";
	    	$('.metalFilterCheckbox').each(function(index,value){
	    		var checkbx = $(this);    
		    	if(checkbx.is(':checked')){
		    		selectedCheckboxes = selectedCheckboxes + checkbx.val() + "_";
		    	}	    	
		    });

		    //alert(selectedCheckboxes);
		    //Ajax call to filter the results

		    $('#metalFilter').val(selectedCheckboxes);
		    ajaxList();    
	    });
      	
	});

	$("#sortBy").live("change", function(e) { 
		ajaxList();
	});

	function setupPriceSlider() {
		$("#productPriceFilter").slider({
			range: true,
			min: $("#filterMinPrice").val()-1,
			max: $("#filterMaxPrice").val()+1,
			values: [ $("#filterMinPrice").val(), $("#filterMaxPrice").val()],
			step:5,
			slide: function(event, ui) {
				$("#minPrice").val(ui.values[0]);
				$("#maxPrice").val(ui.values[1]);
			},
			stop: function(event, ui) {
				ajaxList(); 
			}
		});


	    $("#minPrice").val($("#filterMinPrice").val());
	    $("#maxPrice").val($("#filterMaxPrice").val());
	}
 
	// Turn all sorting and paging links into ajax requests for the grid
	function setupGridAjax() {
	    $("#grid").find(".pager a, th.sortable a").live('click', function(event) {
	        event.preventDefault();
	        var url = $(this).attr('href');
	 
	        var grid = $(".ajax");
	        $(grid).html($("#spinner").html());
	 
	        $.ajax({
	            type: 'GET',
	            url: url,
	            success: function(data) {
	                $(grid).html(data);
	            }
	        })
	    });

	 
	}

	function ajaxList() {
		var url = '<g:createLink controller="jewellery" action="list" />';
		url = url + "?" + "sortBy=" + $("#sortBy").val();
		url = url + "&" + "minPrice=" + $("#productPriceFilter").slider( "values", 0 );
		url = url + "&" + "maxPrice=" + $("#productPriceFilter").slider( "values", 1 );
		url = url + "&" + "productTypeName=" + $("#productTypeName").val();
		url = url + "&" + "productCat1=" + $("#productTypeCat1").val();
		url = url + "&" + "metalFilter=" + $("#metalFilter").val();
		
	    var grid = $(".ajax");
	    $(grid).html($("#spinner").html());

	    //alert($('#metalFilter').val());
		
	    $.ajax({
	        type: 'GET',
	        async : true,
	        url: url,
	        success: function(data) {
	            $(grid).html(data);
	        }
	    });
	}
</script>

</head>
<body>
	
	<div class="row">
		<div class="elevencol">
			<h1 class="page-subtitle">
				${params.pageHeader}
			</h1>
			<hr/>
		</div>
	</div>
	
	<div class="row">
		<div class="left product-filter">
			<h1 class="filter-heading">Narrow Results</h1>
			<hr />
			
			<div id="clearFilterDiv" style="display: none;">
				<a href="<g:createLink controller="jewellery" action="list" class="productTypeFilterLink clearAll"/>">Clear All Filters</a>
			</div>

			<!-- Price Range Filter -->
			<span class="label-product-filter">
				Price :
			</span>
			
			<input type="hidden" name="productType" id="productType" value="${params.productTypeId}"/>
			
			<input type="hidden" name="productTypeName" id="productTypeName" value="${activeProductTypeName}"/>
			<input type="hidden" name="productTypeCat1" id="productTypeCat1" value="${activeCat1}"/>
			<input type="hidden" name="metalFilter" id="metalFilter" value="${metalFilter}"/>
			
			<div id="productPriceFilter" class="productPriceFilter"></div>
			<div class="productPriceFilter" style="font-size: 11px;margin-top: 5px;">
				<input type="text" name="minPrice" id="minPrice" readonly="readonly"
						value="${params.minPrice}" 
						size="5" style="float:left;font-size: 11px;"/>
				<input type="text" name="maxPrice" id="maxPrice" readonly="readonly" size="5" 
						value="${params.maxPrice}" 
						style="float:right;font-size: 11px;"/>
			</div>
			<br/><br/>
			
			<!--  -->
			<div class="label-product-filter">
				Metal :
			</div>
			
			<div id="metalTypes">
				<g:checkBox name="whiteGold18K" value="whiteGold18K" class="metalFilterCheckbox" />
				<label for="whiteGold18K">White Gold 18K</label>
				<br/>
				
				<g:checkBox name="whiteGold14K" value="whiteGold14K" class="metalFilterCheckbox"/>
				<label for="whiteGold14K">White Gold 14K</label>
				<br/>
				
				<g:checkBox name="sterlingSilver" value="sterlingSilver" class="metalFilterCheckbox"/>
				<label for="sterlingSilver">Sterling Silver</label>
				<br/>
				
				<g:checkBox name="yellowGold18K" value="yellowGold18K" class="metalFilterCheckbox"/>
				<label for="yellowGold18K">18K Yellow</label>
				<br/>
				
				<g:checkBox name="yellowGold14K" value="yellowGold14K" class="metalFilterCheckbox"/>
				<label for="yellowGold14K">14K Yellow</label>
				<br/>
				
				<g:checkBox name="roseGold18K" value="roseGold18K" class="metalFilterCheckbox"/>
				<label for="roseGold18K">18K Rose</label>
				<br/>
				
				<g:checkBox name="roseGold14K" value="roseGold14K" class="metalFilterCheckbox"/>
				<label for="roseGold14K">14K Rose</label>
				<br/>
			</div>

			<br/>

			<!-- Price Range Filter -->
			<div class="label-product-filter">
				Jewellery Type :
			</div>			

	
			<div id="productTypes">
			</div>
			
			
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			
		</div>

		<!--
			margin-left: -2.5em; : Provides more space in the list area 
		 -->
		<div class="right product-list-wrapper" style="margin-left: -2.5em;">
			<div id="product-list-content" style="border-top: 1px;">
				<g:each in="${prodCat1}" status="i" var="prodCat">
					<div <g:if test="${prodCat.productTypeName == activeCat1}">class = 'Cat_tabs_active'</g:if><g:else>class="Cat_tabs"</g:else>>
						<g:link mapping="jewelleryCat1"  params="[productCat1:prodCat.productTypeName,productTypeName:prodCat.parentType.productTypeName]">
							${prodCat.productTypeName}
						</g:link>
					</div>
				</g:each>

				<hr style="width:100%;margin-left: -1.5em;"/>
				
				<div id="grid">
		            <g:render template="grid" model="model" />
		        </div>
			</div>
		</div>
	</div>
</body>
</html>