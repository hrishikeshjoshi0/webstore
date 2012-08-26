<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Diamond</title>
<style>
	.ui-button-text-only .ui-button-text {
		width : 4px;
	}
</style>
<script>
	$(function() {
		$( "#format" ).buttonset();
	});

	function ajaxList() {
		var url = '<g:createLink controller="diamond" action="list" />';
		url = url + "?" + "sortBy=" + $("#sortBy").val();
		//url = url + "&" + "productTypeId=" + $("#productType").val();
		//Price
		url = url + "&" + "minPrice=" + $("#priceFilter").slider( "values", 0 );
		url = url + "&" + "maxPrice=" + $("#priceFilter").slider( "values", 1 );
		//Carat
		url = url + "&" + "minCarat=" + $("#caratFilter").slider( "values", 0 );
		url = url + "&" + "maxCarat=" + $("#caratFilter").slider( "values", 1 );
		//Color
		url = url + "&" + "minColor=" + $("#colorFilter").slider( "values", 0 );
		url = url + "&" + "maxColor=" + $("#colorFilter").slider( "values", 1 );
		//Cut
		url = url + "&" + "minCut=" + $("#cutFilter").slider( "values", 0 );
		url = url + "&" + "maxCut=" + $("#cutFilter").slider( "values", 1 );
		//Clarity
		url = url + "&" + "minClarity=" + $("#clarityFilter").slider( "values", 0 );
		url = url + "&" + "maxClarity=" + $("#clarityFilter").slider( "values", 1 );
		
	    var grid = $(".ajax");
	    $(grid).html($("#spinner").html());
	
	    $.ajax({
	        type: 'GET',
	        url: url,
	        success: function(data) {
	        	$('#loading').hide();
	            $(grid).html(data);
	        },
        	beforeSend : function() {
            	$('#loading').show();
            }
	    });
	}

	function setupCaratSlider() {
		$("#caratFilter").slider({
			range: true,
			min: $("#caratFilterMin").val(),
			max: $("#caratFilterMax").val(),
			values: [$("#caratFilterMin").val(), $("#caratFilterMax").val()],
			step:0.01,
			slide: function(event, ui) {
				$("#caratMin").val(ui.values[0]);
				$("#caratMax").val(ui.values[1]);
			},
			stop: function(event, ui) {
				ajaxList(); 
			}
		});

	    $("#caratMin").val($("#caratFilterMin").val());
	    $("#caratMax").val($("#caratFilterMax").val());
	}

	function setupColorSlider() {
		$("#colorFilter").slider({
			range: true,
			min: 1,//$("#colorFilterMin").val(),
			max: 7,//$("#colorFilterMax").val(),
			values: [1,7],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step:1,
			slide: function(event, ui) {
				$("#colorMin").val(ui.values[0]);
				$("#colorMax").val(ui.values[1]);
			},
			stop: function(event, ui) {
				ajaxList(); 
			}
		});

	    $("#colorMin").val($("#colorFilterMin").val());
	    $("#colorMax").val($("#colorFilterMax").val());
	}

	function setupPriceSlider() {
		$("#priceFilter").slider({
			range: true,
			min: $("#filterMinPrice").val()-1,
			max: $("#filterMaxPrice").val()+1,
			values: [ $("#filterMinPrice").val(), $("#filterMaxPrice").val()],
			step:10,
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

	function setupCutSlider() {
		$("#cutFilter").slider({
			range: true,
			min: 1,//$("#colorFilterMin").val(),
			max: 5,//$("#colorFilterMax").val(),
			values: [1,5],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step:1,
			slide: function(event, ui) {
				$("#cutMin").val(ui.values[0]);
				$("#cutMax").val(ui.values[1]);
			},
			stop: function(event, ui) {
				ajaxList(); 
			}
		});

	    $("#cutMin").val($("#cutFilterMin").val());
	    $("#cutMax").val($("#cutFilterMax").val());
	}

	function setupClaritySlider() {
		$("#clarityFilter").slider({
			range: true,
			min: 1,//$("#colorFilterMin").val(),
			max: 9,//$("#colorFilterMax").val(),
			values: [1,9],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step:1,
			slide: function(event, ui) {
				$("#clarityMin").val(ui.values[0]);
				$("#clarityMax").val(ui.values[1]);
			},
			stop: function(event, ui) {
				ajaxList(); 
			}
		});

	    $("#clarityMin").val($("#clarityFilterMin").val());
	    $("#clarityMax").val($("#clarityFilterMax").val());
	}
	
	$(document).ready(function(){
    	setupCaratSlider();
    	setupColorSlider();
    	setupPriceSlider();

    	setupCutSlider();		
    	setupClaritySlider();	
	});
</script>
</head>
<body>
	<h1 class="page-title">Search for Diamonds</h1>
	<div id="search" style="margin-left:10px;">
		<!-- Row1 -->
		<div class="row">
			<div class="fourcol">
					<h2 class="filter-criteria-label">Shape</h2>
					<div id="shapeFilter">
						<div id="format">
							<input type="checkbox" id="check1" /><label for="check1">1</label>
							<input type="checkbox" id="check2" /><label for="check2">2</label>
							<input type="checkbox" id="check3" /><label for="check3">3</label>
							<input type="checkbox" id="check4" /><label for="check4">4</label>
							<input type="checkbox" id="check5" /><label for="check5">5</label>
							<input type="checkbox" id="check6" /><label for="check6">6</label>
							<input type="checkbox" id="check7" /><label for="check7">7</label>
							<input type="checkbox" id="check8" /><label for="check8">8</label>
							<input type="checkbox" id="check9" /><label for="check9">9</label>
							<input type="checkbox" id="check10" /><label for="check10">10</label>
						</div>
					</div>
			</div>
			<div class="threecol">
				<h2 class="filter-criteria-label">Carat</h2>
				<div id="caratFilter" class="caratFilter"></div>
				
				<input type="hidden" id="caratFilterMin" name="caratFilterMin" value="${params.caratFilterMin}"/>
				<input type="hidden" id="caratFilterMax" name="caratFilterMax" value="${params.caratFilterMax}"/>
				
				<div style="font-size: 11px;margin-top: 5px;">
					<input type="text" name="caratMin" id="caratMin" readonly="readonly"
							value="" 
							size="5" style="float:left;font-size: 11px;"/>
					<input type="text" name="caratMax" id="caratMax" readonly="readonly" size="5" 
							value="${params.caratMax}" 
							style="float:right;font-size: 11px;"/>
				</div>
			</div>
			
			<div class="threecol">
				<h2 class="filter-criteria-label">Color</h2>
				<div id="colorFilter" class="colorFilter"></div>
				
				<input type="hidden" id="colorFilterMin" name="colorFilterMin" value="${params.colorFilterMin}"/>
				<input type="hidden" id="colorFilterMax" name="colorFilterMax" value="${params.colorFilterMax}"/>
				
				<div style="font-size: 11px;margin-top: 5px;">
					<input type="text" name="colorMin" id="colorMin" readonly="readonly"
							value="" size="5" style="float:left;font-size: 11px;"/>
					<input type="text" name="colorMax" id="colorMax" readonly="readonly" size="5" 
							value="" style="float:right;font-size: 11px;"/>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="threecol" style="margin-right: 50px;margin-left: 60px;">
				<h2 class="filter-criteria-label">Price</h2>
				<div id="priceFilter" class="priceFilter"></div>
				
				<input type="hidden" id="filterMinPrice" name="filterMinPrice" value="${params.minPrice}"/>
				<input type="hidden" id="filterMaxPrice" name="filterMaxPrice" value="${params.maxPrice}"/>
				
				<div style="font-size: 11px;margin-top: 5px;">
					<input type="text" name="minPrice" id="minPrice" readonly="readonly"
							value="${params.minPrice}" 
							size="5" style="float:left;font-size: 11px;"/>
					<input type="text" name="maxPrice" id="maxPrice" readonly="readonly" size="5" 
							value="${params.maxPrice}" 
							style="float:right;font-size: 11px;"/>
				</div>
			</div>
			
			<div class="threecol">
				<h2 class="filter-criteria-label">Cut</h2>
				<div id="cutFilter" class="cutFilter"></div>
				
				<input type="hidden" id="cutFilterMin" name="cutFilterMin" value="${params.cutFilterMin}"/>
				<input type="hidden" id="cutFilterMax" name="cutFilterMax" value="${params.cutFilterMax}"/>
				
				<div style="font-size: 11px;margin-top: 5px;">
					<input type="text" name="cutMin" id="cutMin" readonly="readonly"
							value="" size="5" style="float:left;font-size: 11px;"/>
					<input type="text" name="cutMax" id="cutMax" readonly="readonly" size="5" 
							value="" style="float:right;font-size: 11px;"/>
				</div>
			</div>
			
			<div class="threecol">
				<h2 class="filter-criteria-label">Clarity</h2>
				<div id="clarityFilter" class="clarityFilter"></div>
				
				<input type="hidden" id="clarityFilterMin" name="clarityFilterMin" value="${params.clarityFilterMin}"/>
				<input type="hidden" id="clarityFilterMax" name="clarityFilterMax" value="${params.clarityFilterMax}"/>
				
				<div style="font-size: 11px;margin-top: 5px;">
					<input type="text" name="clarityMin" id="clarityMin" readonly="readonly"
							value="" size="5" style="float:left;font-size: 11px;"/>
					<input type="text" name="clarityMax" id="clarityMax" readonly="readonly" size="5" 
							value="" style="float:right;font-size: 11px;"/>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div id="results" class="tencol">
				<div id="loading" style="display:none;">
					<center>
						Loading Results... <br/>
						<img
						alt="Loading"
						title="Loading Results.."
						src="${resource(dir: '/images', file: 'ajax-loader.gif')}" />
					</center>
				</div>
				<div id="grid">
		            <g:render template="grid" model="model" />
		        </div>
			</div>
		</div>
	</div>
</body>
</html>
