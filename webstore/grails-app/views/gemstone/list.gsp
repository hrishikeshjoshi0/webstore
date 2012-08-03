<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Gemstone</title>
<script type="text/javascript">
$(document).ready(function() {
   		setupGridAjax();

	    $("#productPriceFilter").slider({
			range: true,
			min: 0,
			max: 500,
			values: [ 75, 300 ],
			slide: function(event, ui) {
				$("#minPrice").val(ui.values[0]);
				$("#maxPrice").val(ui.values[1]);
			},
			stop: function(event, ui) {
				ajaxList(); 
			}
		});

	    $("#minPrice").val($("#productPriceFilter").slider( "values", 0 ));
	    $("#maxPrice").val($("#productPriceFilter").slider( "values", 1 ));

	    $.ajax({
	        type: 'GET',
	        url: "<g:createLink controller='product' action='ajaxGetCategoryTypes' />" + "?productCategory=" + "gemstone",
	        success: function(data) {
	            $('#productTypes').html(data);
	        }
	    });
	});

	$("#sortBy").live("change", function(e) { 
		ajaxList();
	});
 
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
		var url = '<g:createLink controller="gemstone" action="list" />';
		url = url + "?" + "sortBy=" + $("#sortBy").val();
		url = url + "&" + "minPrice=" + $("#productPriceFilter").slider( "values", 0 );
		url = url + "&" + "maxPrice=" + $("#productPriceFilter").slider( "values", 1 );
		
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

			<!-- Price Range Filter -->
			<span class="label-product-filter">
				Price :
			</span>
			
			<div id="productPriceFilter" class="productPriceFilter"></div>
			<div class="productPriceFilter" style="font-size: 11px;margin-top: 5px;">
				<input type="text" name="minPrice" id="minPrice" readonly="readonly" size="4" style="float:left;"/>
				<input type="text" name="maxPrice" id="maxPrice" readonly="readonly" size="4" style="float:right;"/>
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
			<h1 class="page-title">
				Featured Gemstones
			</h1>
			
			<div id="grid">
	            <g:render template="grid" model="model" />
	        </div>
		</div>
	</div>
</body>
</html>
