<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Gemstone</title>
<script type="text/javascript">
$(document).ready(function() {
   		setupGridAjax();
   		setupPriceSlider();

   		//Get Product Types.
	    $.ajax({
	        type: 'GET',
	        url: "<g:createLink controller='product' action='ajaxGetCategoryTypes' />" 
		        	+ "?productCategory=" + "gemstone"
		        	+ "&template=" + "/gemstone/productTypes",
	        success: function(data) {
	            $('#productTypes').html(data);
	        }
	    });


        //  Initialize xBreadcrumbs
        //$('#breadcrumbs-1').xBreadcrumbs();
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

	 $('.productTypeFilterLink').live('click', function(event) {
	        event.preventDefault();
	        var rel = $(this).attr('rel');
	        $("#productType").val(rel);

	        var url = $(this).attr('href');
	        
	        $('.selectedProductType').removeClass('selectedProductType');

	        $(this).parent().addClass('selectedProductType');

	        $('#clearFilterDiv').show();
	        	        
	        var grid = $(".ajax");
	        $(grid).html($("#spinner").html());
		    $.ajax({
		           type: 'GET',
		           url: url,
		           success: function(data) {
		               $(grid).html(data);
		               setupPriceSlider();
		           }
		    });
		 });
	}

	function ajaxList() {
		var url = '<g:createLink controller="gemstone" action="list" />';
		url = url + "?" + "sortBy=" + $("#sortBy").val();
		url = url + "&" + "minPrice=" + $("#productPriceFilter").slider( "values", 0 );
		url = url + "&" + "maxPrice=" + $("#productPriceFilter").slider( "values", 1 );
		url = url + "&" + "productTypeId=" + $("#productType").val();
		
	    var grid = $(".ajax");
	    $(grid).html($("#spinner").html());
	
	    $.ajax({
	        type: 'GET',
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
		<div class="left product-filter">
			<h1 class="filter-heading">Narrow Results</h1>
			<hr />
			
			<div id="clearFilterDiv" style="display: none;">
				<a href="<g:createLink controller="gemstone" action="list" class="productTypeFilterLink clearAll"/>">Clear All Filters</a>
			</div>

			<!-- Price Range Filter -->
			<span class="label-product-filter">
				Price :
			</span>
			
			<input type="hidden" name="productType" id="productType" value="${params.productTypeId}"/>
			
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

			<!-- Price Range Filter -->
			<div class="label-product-filter">
				Gemstone Type :
			</div>			

			<div id="productTypes">
				
			</div>
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			
		</div>

		<!--
			margin-left: -2.5em; : Provides more space in the list area 
		 -->
		<div class="right product-list-wrapper" style="margin-left: -2.5em;">
			<%--<div id="bread-crumbs">
				<g:render template="/common/breadCrumb" />
			</div>
			--%>
			<div id="grid">
	            <g:render template="grid" model="model" />
	        </div>
		</div>
	</div>
</body>
</html>
