<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Diamond</title>
<style>
.ui-button-text-only .ui-button-text {
	width: 4px;
}
#colormin {display: none;}
</style>
<script>
	//demo 2
	$(function() {
		$("#format").buttonset();
	});
	

	function ajaxList() {
		var url = '<g:createLink controller="diamond" action="list" />';
		url = url + "?" + "sortBy=" + $("#sortBy").val();
		//url = url + "&" + "productTypeId=" + $("#productType").val();
		//Price
		url = url + "&" + "minPrice=" + $("#priceFilter").slider("values", 0);
		url = url + "&" + "maxPrice=" + $("#priceFilter").slider("values", 1);
		//Carat
		url = url + "&" + "minCarat=" + $("#caratFilter").slider("values", 0);
		url = url + "&" + "maxCarat=" + $("#caratFilter").slider("values", 1);
		//Color
		url = url + "&" + "minColor=" + $("#colorFilter").slider("values", 0);
		url = url + "&" + "maxColor=" + $("#colorFilter").slider("values", 1);
		//Cut
		url = url + "&" + "minCut=" + $("#cutFilter").slider("values", 0);
		url = url + "&" + "maxCut=" + $("#cutFilter").slider("values", 1);
		//Clarity
		url = url + "&" + "minClarity="
				+ $("#clarityFilter").slider("values", 0);
		url = url + "&" + "maxClarity="
				+ $("#clarityFilter").slider("values", 1);
		//Polish
		url = url + "&" + "minPolish=" + $("#polishFilter").slider("values", 0);
		url = url + "&" + "maxPolish=" + $("#polishFilter").slider("values", 1);
		//Symmetry
		url = url + "&" + "minSymmetry="+ $("#symmetryFilter").slider("values", 0);
		url = url + "&" + "maxSymmetry="+ $("#symmetryFilter").slider("values", 1);
		//Fluoroscence
		url = url + "&" + "minFluoroscence="+ $("#fluoroscenceFilter").slider("values", 0);
		url = url + "&" + "maxFluoroscence="+ $("#fluoroscenceFilter").slider("values", 1);

		var Roundcheckbox = $("1");
		url = url + "&" + "Round-checkbox="+ $(Roundcheckbox);

		var grid = $(".ajax");
		$(grid).html($("#spinner").html());

		$.ajax({
			type : 'GET',
			url : url,
			success : function(data) {
				$('#loading').hide();
				$(grid).html(data);
			},
			beforeSend : function() {
				$('#loading').show();
			}

		});
	}

	function checkboxtest() {

		$('input[name=Round-checkbox]').change(function(){
			if($('input[name=Round-checkbox]').is(":checked")){
				ajaxList();
			    } else {
			    ajaxList();
			    }
		    
			});
	}
	
	function setupCaratSlider() {
		$("#caratFilter").slider(
				{
					range : true,
					min : $("#caratFilterMin").val(),
					max : $("#caratFilterMax").val(),
					values : [ $("#caratFilterMin").val(),
							$("#caratFilterMax").val() ],
					step : 0.01,
					slide : function(event, ui) {
						$("#caratMin").val(ui.values[0]);
						$("#caratMax").val(ui.values[1]);
					},
					stop : function(event, ui) {
						ajaxList();
					}
				});

		$("#caratMin").val($("#caratFilterMin").val());
		$("#caratMax").val($("#caratFilterMax").val());
	}

	function setupColorSlider() {
		$("#colorFilter").slider({
			range : true,
			min : 1,//$("#colorFilterMin").val(),
			max : 10,//$("#colorFilterMax").val(),
			values : [ 1, 10 ],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step : 1,
			slide : function(event, ui) {
				$("#colorMin").val(ui.values[0]);
				$("#colorMax").val(ui.values[1]);
			},
			stop : function(event, ui) {
				ajaxList();
			}
		});

		$("#colorMin").val($("#colorFilterMin").val());
		$("#colorMax").val($("#colorFilterMax").val());
		$('#colorMin').eq(0).css({display: 'none'});
		$('#colorMax').eq(0).css({display: 'none'});
		
		
	}

	function setupPriceSlider() {
		$("#priceFilter").slider(
				{
					range : true,
					min : $("#filterMinPrice").val() - 1,
					max : $("#filterMaxPrice").val() + 1,
					values : [ $("#filterMinPrice").val(),
							$("#filterMaxPrice").val() ],
					step : 10,
					slide : function(event, ui) {
						$("#minPrice").val(ui.values[0]);
						$("#maxPrice").val(ui.values[1]);
					},
					stop : function(event, ui) {
						ajaxList();
					}
				});

		$("#minPrice").val($("#filterMinPrice").val());
		$("#maxPrice").val($("#filterMaxPrice").val());
	}

	function setupCutSlider() {
		$("#cutFilter").slider({
			range : true,
			min : 1,//$("#colorFilterMin").val(),
			max : 5,//$("#colorFilterMax").val(),
			values : [ 1, 5 ],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step : 1,
			slide : function(event, ui) {
				$("#cutMin").val(ui.values[0]);
				$("#cutMax").val(ui.values[1]);
			},
			stop : function(event, ui) {
				ajaxList();
			}
		});

		$("#cutMin").val($("#cutFilterMin").val());
		$("#cutMax").val($("#cutFilterMax").val());
		$('#cutMin').eq(0).css({display: 'none'});
		$('#cutMax').eq(0).css({display: 'none'});
	}

	function setupClaritySlider() {
		$("#clarityFilter").slider({
			range : true,
			min : 1,//$("#colorFilterMin").val(),
			max : 12,//$("#colorFilterMax").val(),
			values : [ 1, 12 ],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step : 1,
			slide : function(event, ui) {
				$("#clarityMin").val(ui.values[0]);
				$("#clarityMax").val(ui.values[1]);
			},
			stop : function(event, ui) {
				ajaxList();
			}
		});

		$("#clarityMin").val($("#clarityFilterMin").val());
		$("#clarityMax").val($("#clarityFilterMax").val());
		$('#clarityMin').eq(0).css({display: 'none'});
		$('#clarityMax').eq(0).css({display: 'none'});
	}

	function setupPolishSlider() {
		$("#polishFilter").slider({
			range : true,
			min : 1,//$("#colorFilterMin").val(),
			max : 5,//$("#colorFilterMax").val(),
			values : [ 1, 5 ],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step : 1,
			slide : function(event, ui) {
				$("#polishMin").val(ui.values[0]);
				$("#polishMax").val(ui.values[1]);
			},
			stop : function(event, ui) {
				ajaxList();
			}
		});
		$("#polishMin").val($("#polishFilterMin").val());
		$("#polishMax").val($("#polishFilterMax").val());
	}

	function setupSymmetrySlider() {
		$("#symmetryFilter").slider({
			range : true,
			min : 1,//$("#colorFilterMin").val(),
			max : 5,//$("#colorFilterMax").val(),
			values : [ 1, 5 ],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step : 1,
			slide : function(event, ui) {
				$("#symmetryMin").val(ui.values[0]);
				$("#symmetryMax").val(ui.values[1]);
			},
			stop : function(event, ui) {
				ajaxList();
			}
		});
		$("#symmetryMin").val($("#symmetryFilterMin").val());
		$("#symmetryMax").val($("#symmetryFilterMax").val());
	}

	function setupFluoroscenceSlider() {
		$("#fluoroscenceFilter").slider({
			range : true,
			min : 1,//$("#colorFilterMin").val(),
			max : 5,//$("#colorFilterMax").val(),
			values : [ 1, 5 ],//[$("#colorFilterMin").val(), $("#colorFilterMax").val()],
			step : 1,
			slide : function(event, ui) {
				$("#fluoroscenceMin").val(ui.values[0]);
				$("#fluoroscenceMax").val(ui.values[1]);
			},
			stop : function(event, ui) {
				ajaxList();
			}
		});
		$("#fluoroscenceMin").val($("#fluoroscenceFilterMin").val());
		$("#fluoroscenceMax").val($("#fluoroscenceFilterMax").val());
	}

	$(document).ready(function() {
		setupCaratSlider();
		setupColorSlider();
		setupPriceSlider();

		setupCutSlider();
		setupClaritySlider();
		setupPolishSlider();
		setupSymmetrySlider();
		setupFluoroscenceSlider();

		checkboxtest();

		
		
	});
</script>
</head>
<body>
	<div class="row">
		<div class="elevencol">
			<h1 class="page-subtitle">Search for Diamonds</h1>
			<hr />
		</div>
	</div>

	<div class="row">
		<div class="left product-filter" Style="height: 600px">
			<div class="fourcol"></div>
		</div>


		<div id="search" style="margin-left: 10px;">
			<!-- Row1 -->

			<%--			<div class="fourcol">--%>
			<%--					<h2 class="filter-criteria-label">Shape</h2>--%>
			<%--					<div id="shapeFilter">--%>
			<%--						<div id="format">--%>
			<%--							<input type="checkbox" id="check1" /><label for="check1">1</label>--%>
			<%--							<input type="checkbox" id="check2" /><label for="check2">2</label>--%>
			<%--							<input type="checkbox" id="check3" /><label for="check3">3</label>--%>
			<%--							<input type="checkbox" id="check4" /><label for="check4">4</label>--%>
			<%--							<input type="checkbox" id="check5" /><label for="check5">5</label>--%>
			<%--							<input type="checkbox" id="check6" /><label for="check6">6</label>--%>
			<%--							<input type="checkbox" id="check7" /><label for="check7">7</label>--%>
			<%--							<input type="checkbox" id="check8" /><label for="check8">8</label>--%>
			<%--							<input type="checkbox" id="check9" /><label for="check9">9</label>--%>
			<%--							<input type="checkbox" id="check10" /><label for="check10">10</label>--%>
			<%--						</div>--%>
			<%--					</div>--%>
			<%--			</div>--%>

			<div class="eightcol last" style="height: 112px; margin-top: 2px;">
				<span class="title">Diamond Search</span>
				<div id="contents" style="text-align: center;">
					<g:form>
						<img id="loose-diamonds-img" alt="Diamond Search"
							src="${resource(dir: 'images/site/home', file: 'diamond-search.png')}">
						<br />
						<div style="font-size: 9px;">
							<label class="diamond" for="Round-checkbox" style= "margin-right: 1.9em" > <span
								class="shape">Round   </span><br /> <input type="checkbox"
								id="Round-checkbox" name="Round-checkbox" value="on" />
							</label> <label class="diamond" for="Princess-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Princess</span><br /> <input type="checkbox"
								id="Princess-checkbox" name="Princess-checkbox" value="on" />
							</label> <label class="diamond" for="Asscher-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Asscher</span><br /> <input type="checkbox"
								id="Asscher-checkbox" name="Asscher-checkbox" value="on" />
							</label> <label class="diamond" for="Radiant-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Radiant</span><br /> <input type="checkbox"
								id="Radiant-checkbox" name="Radiant-checkbox" value="on" />
							</label> <label class="diamond" for="Cushion-checkbox" style= "margin-right: 1.7em"> <span
								class="shape">Cushion</span><br /> <input type="checkbox"
								id="Cushion-checkbox" name="Cushion-checkbox" value="on" />
							</label> <label class="diamond" for="Emerald-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Emerald</span><br /> <input type="checkbox"
								id="Emerald-checkbox" name="Emerald-checkbox" value="on" />
							</label> <label class="diamond" for="Marquise-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Marquise</span><br /> <input type="checkbox"
								id="Marquise-checkbox" name="Marquise-checkbox" value="on" />
							</label> <label class="diamond" for="Oval-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Oval</span><br /> <input type="checkbox"
								id="Oval-checkbox" name="Oval-checkbox" value="on" />
							</label> <label class="diamond" for="Pear-checkbox" style= "margin-right: 2.1em"> <span
								class="shape">Pear</span><br /> <input type="checkbox"
								id="Pear-checkbox" name="Pear-checkbox" value="on" />
							</label> <label class="diamond" for="Heart-checkbox" style= "margin-right: 1.9em"> <span
								class="shape">Heart</span><br /> <input type="checkbox"
								id="Heart-checkbox" name="Heart-checkbox" value="on" />
							</label>
						</div>
						<div class="clear"></div>
<%--						<div>--%>
<%--							<center>--%>
<%--								<g:submitButton class="button" name="Search"--%>
<%--									value="Search Diamonds" />--%>
<%--							</center>--%>
<%--						</div>--%>
					</g:form>
				</div>
			</div>

			<div id="slider-container" style="margin-top: 20px;">
				<div class="fourcol" style=" 60px;height: 60px;">
					<h2 class="filter-criteria-label">Price</h2>
					<div id="priceFilter" class="priceFilter"></div>

					<input type="hidden" id="filterMinPrice" name="filterMinPrice"
						value="${params.minPrice}" /> <input type="hidden"
						id="filterMaxPrice" name="filterMaxPrice"
						value="${params.maxPrice}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="minPrice" id="minPrice"
							readonly="readonly" value="${params.minPrice}" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="maxPrice" id="maxPrice" readonly="readonly" size="5"
							value="${params.maxPrice}" style="float: right; font-size: 11px;" />
					</div>
				</div>


				<div class="fourcol" style="margin-left: 60px;height: 60px;">
					<h2 class="filter-criteria-label">Carat</h2>
					<div id="caratFilter" class="caratFilter"></div>

					<input type="hidden" id="caratFilterMin" name="caratFilterMin"
						value="${params.caratFilterMin}" /> <input type="hidden"
						id="caratFilterMax" name="caratFilterMax"
						value="${params.caratFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="caratMin" id="caratMin"
							readonly="readonly" value="" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="caratMax" id="caratMax" readonly="readonly" size="5"
							value="${params.caratMax}" style="float: right; font-size: 11px;" />
					</div>
				</div>

				<div class="fourcol" style=" 60px;height: 60px;">
				
					<h2 class="filter-criteria-label">Color</h2>
					<div id="colorFilter" class="colorFilter"></div>

					<input type="hidden" id="colorFilterMin" name="colorFilterMin"
						value="${params.colorFilterMin}" /> <input type="hidden"
						id="colorFilterMax" name="colorFilterMax"
						value="${params.colorFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="colorMin" id="colorMin"
							readonly="readonly" value="" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="colorMax" id="colorMax" readonly="readonly" size="5"
							value="" style="float: right; font-size: 11px;" />
					</div>
					<img id="loose-diamonds-img" alt="Diamond Search"
							src="${resource(dir: 'images', file: 'ColorRuler.jpg')}">
					</div>
				
				


				<div class="fourcol" style="margin-left: 60px;height: 60px;">
					<h2 class="filter-criteria-label">Clarity</h2>
					<div id="clarityFilter" class="clarityFilter"></div>

					<input type="hidden" id="clarityFilterMin" name="clarityFilterMin"
						value="${params.clarityFilterMin}" /> <input type="hidden"
						id="clarityFilterMax" name="clarityFilterMax"
						value="${params.clarityFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="clarityMin" id="clarityMin"
							readonly="readonly" value="" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="clarityMax" id="clarityMax" readonly="readonly" size="5"
							value="" style="float: right; font-size: 11px;" />
					</div>
						<img id="loose-diamonds-img" alt="Diamond Search"
							src="${resource(dir: 'images', file: 'ClarityRuler.jpg')}">
				</div>

				<div class="fourcol" style=" 60px;height: 60px;">
					<h2 class="filter-criteria-label">Cut</h2>
					<div id="cutFilter" class="cutFilter"></div>

					<input type="hidden" id="cutFilterMin" name="cutFilterMin"
						value="${params.cutFilterMin}" /> <input type="hidden"
						id="cutFilterMax" name="cutFilterMax"
						value="${params.cutFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="cutMin" id="cutMin" readonly="readonly"
							value="" size="5" style="float: left; font-size: 11px;" /> <input
							type="text" name="cutMax" id="cutMax" readonly="readonly"
							size="5" value="" style="float: right; font-size: 11px;" />
					</div>
					<img id="loose-diamonds-img" alt="Diamond Search"
							src="${resource(dir: 'images', file: 'CutRuler.jpg')}">
				</div>

				<div class="fourcol" style="margin-left: 60px;height: 60px;">
					<h2 class="filter-criteria-label">Polish</h2>
					<div id="polishFilter" class="polishFilter"></div>

					<input type="hidden" id="polishFilterMin" name="polishFilterMin"
						value="${params.polishFilterMin}" /> <input type="hidden"
						id="polishFilterMax" name="polishFilterMax"
						value="${params.polishFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="polishMin" id="polishMin"
							readonly="readonly" value="" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="polishMax" id="polishMax" readonly="readonly" size="5"
							value="" style="float: right; font-size: 11px;" />
					</div>
				</div>

				<div class="fourcol" style=" 60px;height: 60px;">
					<h2 class="filter-criteria-label">symmetry</h2>
					<div id="symmetryFilter" class="symmetryFilter"></div>

					<input type="hidden" id="symmetryFilterMin"
						name="symmetryFilterMin" value="${params.symmetryFilterMin}" /> <input
						type="hidden" id="symmetryFilterMax" name="symmetryFilterMax"
						value="${params.symmetryFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="symmetryMin" id="symmetryMin"
							readonly="readonly" value="" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="symmetryMax" id="symmetryMax" readonly="readonly" size="5"
							value="" style="float: right; font-size: 11px;" />
					</div>
				</div>


				<div class="fourcol" style="margin-left: 60px;height: 60px;">
					<h2 class="filter-criteria-label">Fluoroscence</h2>
					<div id="fluoroscenceFilter" class="fluoroscenceFilter"></div>

					<input type="hidden" id="fluoroscenceFilterMin"
						name="fluoroscenceFilterMin"
						value="${params.fluoroscenceFilterMin}" /> <input type="hidden"
						id="fluoroscenceFilterMax" name="fluoroscenceFilterMax"
						value="${params.fluoroscenceFilterMax}" />

					<div style="font-size: 11px; margin-top: 5px;">
						<input type="text" name="fluoroscenceMin" id="fluoroscenceMin"
							readonly="readonly" value="" size="5"
							style="float: left; font-size: 11px;" /> <input type="text"
							name="fluoroscenceMax" id="fluoroscenceMax" readonly="readonly"
							size="5" value="" style="float: right; font-size: 11px;" />
					</div>
				</div>
			</div>

			<div id="results" class="eightcol"
				style="border-top: 1px dotted #B5B5B5; width: 810px;">
				<div id="loading" style="display: none;">
					<center>
						Loading Results... <br /> <img alt="Loading"
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
