
<%@ page import="com.openappengine.model.product.Gemstone" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodGemstone.label', default: 'ProdGemstone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
			<div class="fourcol details" style="margin-left:2.5em;margin-top: 2.5em;">
				<div id="content">
					<h3 class="product_name_header">
						${prodGemstoneInstance?.pdProductName}
					</h3>
					
					<div class="product_price" style="margin-top: 15px;">
						Price : 
						<strong>
							<g:formatNumber number="${prodGemstoneInstance?.getProductPrice(new Date())}" maxFractionDigits="2" />
						</strong>
					</div>
					
					<div class="product_reviews" style="margin-top: 15px;">
					</div>
					
					<hr />
					
					<div class="add_to_cart" style="margin-top: 15px;">
						<button class="add_to_cart">
							ADD TO CART
						</button>
						
						<span id="in_stock" style="margin-left: 10px;">
							IN STOCK
						</span>
					</div>

				<div class="product_offers_tags" style="margin-top: 15px;">
					<%--<div class="product-tag">
						<!-- Create CSS classes for each tag -->
						<span class="new"> NEW </span>
					</div>
				--%></div>

			</div>
			</div>
		</div>
		<!-- INFO-->
		
		<!-- Tabs -->
		<div id="detailsInfo" class="row">
		</div>
	</body>
</html>
