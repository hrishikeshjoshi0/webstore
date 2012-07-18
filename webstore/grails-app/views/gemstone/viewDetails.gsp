
<%@ page import="com.openappengine.model.product.Gemstone" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodGemstone.label', default: 'ProdGemstone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		
		<script>
			$(function() {
				$("#tabs").tabs({
					ajaxOptions: {
						error: function( xhr, status, index, anchor ) {
							$( anchor.hash ).html(
								"Couldn't load this tab. We'll try to fix this as soon as possible.");
						}
					},
					load: function(event, ui) {
				        $('a', ui.panel).click(function() {
				             $(ui.panel).load(this.href);
				    		 return false;
				        });
				    }
									
				});
			});
		</script>
		
		<style type="text/css">
			.ui-tabs-nav {
				background-color: #fafafa;
				border:0px;
				border-bottom: 1px solid #D9DCDC;
				font-family:'Droid Sans',Tahoma,Arial,sans-serif;
				font-size: 12px;
				text-transform:uppercase; 
			}
			
			.ui-tabs {
				font-family:'Droid Sans',Tahoma,Arial,sans-serif;
				font-size: 12px;
				border-radius: 1px;
			}
			
			.ui-tabs-panel {
				border-top: 0px;
				border-bottom: 1px solid #D9DCDC;
				border-left: 1px solid #D9DCDC;
				border-right: 1px solid #D9DCDC;
				font-family:'Droid Sans',Tahoma,Arial,sans-serif;
				font-size: 13px;
			}
			
			.ui-tabs-panel > * {
				font-size: 12px;
			}			
		</style>
	</head>
	<body>
		<div id="details" class="row">
			<!-- DETAIL IMAGE -->
			<div class="fivecol">
				<div class="productDetImageBox">
					<g:render template="detailImageBox"></g:render>
					<%--<img
						class="product-img-det"
						alt="${prodGemstoneInstance.pdProductName}"
						title="${prodGemstoneInstance.pdProductName}"
						src="${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.detailImage?.imageUrl)}" />
				--%>
				</div>
			</div>
			<!-- DETAIL IMAGE -->
			
			<!-- INFO-->
			<div class="fourcol details"
				style="margin-left: 2.5em; margin-top: 4.5em;">
				<div id="content">
					<h1 class="product_name_header">
						${prodGemstoneInstance?.pdProductName}
					</h1>
	
					<div class="product_price" style="margin-top: 15px;">
						Price : <strong> <g:formatNumber
								number="${prodGemstoneInstance?.getProductPrice(new Date())}"
								maxFractionDigits="2" />
						</strong>
					</div>
	
					<div class="product_reviews" style="margin-top: 15px;"></div>
	
					<div class="add_to_cart" style="margin-top: 15px;">
						<button class="add_to_cart">ADD TO CART</button>
	
						<span id="in_stock" style="margin-left: 10px;"> IN STOCK </span>
					</div>
					
					<div class="product_offers_tags" style="margin-top: 15px;">
						<%--<div class="product-tag">
								<!-- Create CSS classes for each tag -->
								<span class="new"> NEW </span>
							</div>
						--%>
					</div>
					
					<br/>
					<hr style="margin:5px;"/>

					<div id="links">
						<ul class="productDetQuickLinks">
							<li>
								<a href="#">Add to WishList</a>
							</li>
							
							<li>
								<a href="#">Email a Friend</a>
							</li>
						</ul>
					</div>
					
				</div>
			</div>
		</div>
		<!-- INFO-->
		
		<!-- Tabs -->
		<div id="detailsInfo" class="row">
			<div class="elevencol">
				<div id="tabs">
					<ul>
						<li>
							<g:link controller="gemstone" action="viewFeatures" id="${prodGemstoneInstance?.pdProductId}">
								Details
							</g:link>
						</li>
						<li><a href="http://www.google.com">Certificate</a></li>
						<li><a href="ajax/content2.html">Shipping & Packaging</a></li>
						<li><a href="ajax/content2.html">Services</a></li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>