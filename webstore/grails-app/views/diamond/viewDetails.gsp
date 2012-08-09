
<%@ page import="com.openappengine.model.product.Gemstone" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>
			${prodDiamondInstance?.pdProductName}
		</title>
		
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
				height: 580px;
			    overflow: auto;
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
					<g:render template="/common/product/detailImageBox"
						model="[productInstance:prodDiamondInstance]"></g:render>
				</div>
			</div>
			<!-- DETAIL IMAGE -->
			
			<!-- INFO-->
			<div class="fourcol details"
				style="margin-left: 2.5em; margin-top: 4.5em;">
				<div id="content">
					<h1 class="product_name_header">
						${prodDiamondInstance?.pdProductName}
					</h1>
					
					<p>
						${prodDiamondInstance?.pdDescription}
					</p>
					
					<div class="product_price" style="margin-top: 5px;">
						Price : <strong> <g:formatNumber
								number="${prodDiamondInstance?.getProductPrice(new Date())}"
								maxFractionDigits="2" />
						</strong>
					</div>
					
					<p>
						<table style="margin-left: -15px;">
							<tr>
								<td>Overall Rating</td>
								<td><span id="overall_Det"> </span></td>
								<td>
									(${prodDiamondInstance?.calculatedInfo?.averageCustomerRating} OUT OF 5)
								</td>
							</tr>
							<tr>
								<td>
									<a href="#tabs" onclick="$('#tabs').tabs('select', 1);">
										Ratings & Reviews 
										(${prodDiamondInstance?.productReviews?.size()})
									</a>
								</td>
							</tr>
						</table>		
						<g:hiddenField name="overall_Det_Rating" value="${prodDiamondInstance?.calculatedInfo?.averageCustomerRating}" />
						<script>
							$(function() {
								$('#overall_Det').ratings(5, $('#overall_Det_Rating').val(), true);
							});
						</script>	
					</p>
	
					<div class="product_reviews" style="margin-top: 15px;"></div>
	
					<div style="margin-top: 15px;">
						<g:form name="add_to_cart_form" action="addToShoppingCart" controller="shoppingCart" >
							<g:hiddenField name="quantityOrdered" value="1"/>
							<g:hiddenField name="productId" value="${prodDiamondInstance?.pdProductId}"/>
							<g:submitButton class="add_to_cart" name="addToCart" value="Add To Cart"/>
						</g:form>
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

					<div id="links" style="margin-left: -15px;">
						<ul class="productDetQuickLinks">
							<li class="add_to_wishList">
								<a href="#">
									<img src="${resource(dir: '/images/site', file:'icon_wishlist.gif')}" style="width:16px;height:16px;"/>
									Add to WishList
								</a>
							</li>
							
							<li class="email_a_friend">
								<a href="#">
									<img src="${resource(dir: '/images/site', file:'icon_mail.gif')}" style="width:16px;height:16px;"/>
									Email a Friend
								</a>
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
							<g:link controller="diamond" action="viewFeatures" id="${prodDiamondInstance?.pdProductId}">
								Details
							</g:link>
						</li>
						<li>
							<g:link controller="productReview" action="_productReviews" params="[productId:prodDiamondInstance?.pdProductId]">
								Reviews (${prodDiamondInstance?.productReviews?.size()})
							</g:link>
						</li>
						<li><a href="#">Certificate</a></li>
						<li><a href="#">Shipping & Packaging</a></li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>