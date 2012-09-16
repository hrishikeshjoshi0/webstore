<%@ page import="com.openappengine.model.cart.ShoppingCart"%>
<%@ page import="com.openappengine.model.product.Product"%>

<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName"
		value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
	<title>Shopping Cart</title>
	<script type="text/javascript">
		$(document).ready(function() {
			var shoppingCartId =$('#shoppingCartId').val();
		    $.ajax({
		        type: 'GET',
		        url: "<g:createLink controller='shoppingCart' action='getOrderSummary' />"
			        	+ "?id=" + shoppingCartId
			        	+ "&displayCartItems=false", 
		        success: function(data) {
		            $('#orderSummary').html(data);
		        }
		    });
		});
	</script>
</head>
<body>
	<input type="hidden" name="shoppingCartId" value="${shoppingCartInstance.shoppingCartId}"/>
	<div class="row">
		<div class="elevencol">
			<h1 class="search-result-title">
				Shopping Cart
			</h1>
			<hr/>
		</div>
	</div>
	
	<div style="">
		<g:if test="${!shoppingCartInstance.cartItems.isEmpty()}">
		<div id="shoppingCart" class="row">
			<div class="tencol" style="border-bottom: 1px dotted #B5B5B5;">
				<p style="float: right;">
					<g:form name="add_to_cart_form" action="checkout_login" method="GET"
					controller="shoppingCart">
						<g:hiddenField name="shoppingCartId"
							value="${shoppingCartInstance?.shoppingCartId}" />
						<g:submitButton class="button" name="checkout"
							value="CONTINUE CHECKOUT" />
					</g:form>
				</p>
			</div>
		</div>
		</g:if>
		
		<div class="row">
			<!-- Cart Items -->
			<div class="ninecol">
				<g:if test="${shoppingCartInstance.cartItems.isEmpty()}">
					<p style="float: left;font-weight: bold;">
						<!-- Display any instructions -->
						We're sorry, there are no items in your shopping bag. Please  Continue Shopping.
					</p>
				</g:if>
				
				<g:if test="${!shoppingCartInstance.cartItems.isEmpty()}">
				<table class="cartItems" id="cartItems"
					style="width: 100%; border: 1px solid #B5B5B5;">
					<thead>
						<tr>
							<th class="cartItemsHeader" align="center">Item</th>
							<th class="cartItemsHeader" align="center">Description</th>
							<th class="cartItemsHeader" align="center">Quantity</th>
							<th class="cartItemsHeader" align="center">Price</th>
						</tr>
					</thead>
					<tbody>
						<g:each in="${shoppingCartInstance.cartItems}" var="c" status="i">
							<tr style="border: 1px dotted #B5B5B5;">
								<g:set var="product" value="${Product.get(c?.productId)}" />
								
								<g:hiddenField id="productId_${i}" name="productId" value="${product?.pdProductId}"/>
								
								<td align="center" valign="top" style="width: 120px;"><img
									class="product-img-det" style="width: 100px; height: 100px;"
									alt="${product?.pdProductName}"
									title="${product?.pdProductName}"
									src="${resource(dir: '/images/uploads/product', file: product?.smallImage?.imageUrl)}" />
								</td>

								<td class="cartItem" align="center" valign="center"
									style="width: 200px;">
									<h1 class="product_name_header">
										${product?.pdProductName} 
									</h1>
									<br /> ${product?.pdDescription}
								</td>

								<td class="cartItem" align="center" valign="center" style="width: 50px;">
									<g:textField id="quantity_${i}" name="shoppingCartItem.quantity"
											maxlength="3"  
											value="${c.quantity}" size="3" />
									<br />
									<g:link controller="shoppingCart" action="removeFromShoppingCart" params="[productId:product.pdProductId]">
										Remove
									</g:link>
								</td>

								<td class="cartItem" align="center" valign="center" style="width: 50px;">
									<span id="price_${i}"> 
										${product.getProductPrice(new Date())}
									</span>
								</td>
								
								<script >
									$(function() {
										$('#quantity_${i}').live('keypress',function(e) {
											//if the letter is not digit then display error and don't type anything
											if( e.which!=8 && e.which!=0 && (e.which<48 || e.which>57)) {
											    return false;
											}

											$.ajax({
												  url: '${g.createLink(controller:"product",action:"getProductPrice")}',
												  data: {productId:$('#productId_${i}').val(),quantity:$('#quantity_${i}').val()},
												  success: function(data) {
													  $("#price_${i}").val(data);
												  }
											});											
										});
									});
								</script>
							</tr>
						</g:each>
					</tbody>
				</table>
				</g:if>
			</div>
		</div>
		
		<div class="row">
			<div class="fivecol">
			</div>
			<div class="fourcol">
				<g:if test="${!shoppingCartInstance.cartItems.isEmpty()}">
					<div id="orderSummary">
					</div>
				</g:if>
			</div>
		</div>
	</div>
</body>
</html>