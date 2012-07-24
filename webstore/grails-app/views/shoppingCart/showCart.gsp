<%@ page import="com.openappengine.model.cart.ShoppingCart"%>
<%@ page import="com.openappengine.model.product.Product"%>

<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
<title>Shopping Cart</title>

</head>
<body>
	<div style="margin-left: 4em;">
		<div id="shoppingCart" class="row">
			<div class="tencol">
				<h2 style="border-bottom: 1px solid #B5B5B5;margin: 5px;">SHOPPING CART</h2>
			</div>
			<div class="tencol">
				<g:form name="add_to_cart_form" action="addToShoppingCart"
					controller="shoppingCart">
					<g:hiddenField name="shoppingCartId"
						value="${shoppingCartInstance?.shoppingCartId}" />
					<g:submitButton class="continue_checkout" name="checkout"
						value="CONTINUE CHECKOUT" />
				</g:form>
			</div>
		</div>

		<div class="row">
			<!-- Cart Items -->
			<div class="elevencol">
				<table class="cartItems" id="cartItems"
					style="width: 70%; border: 1px solid #B5B5B5;">
					<thead>
						<tr style="border: 1px dotted #B5B5B5;">
							<th style="text-transform: uppercase;" align="center">Item</th>
							<th style="text-transform: uppercase;" align="center">Description</th>
							<th style="text-transform: uppercase;" align="center">Quantity</th>
							<th style="text-transform: uppercase;" align="center">Price</th>
						</tr>
					</thead>
					<tbody>
						<g:each in="${shoppingCartInstance.cartItems}" var="c" status="i">
							<tr style="border: 1px dotted #B5B5B5;">
								<g:set var="product" value="${Product.get(c?.productId)}" />
								
								<g:hiddenField id="productId_${i}" name="productId" value="${product?.pdProductId}"/>
								
								<td align="center" valign="top" style="width: 120px;"><img
									class="product-img-det" style="width: 90px; height: 60px;"
									alt="${product?.pdProductName}"
									title="${product?.pdProductName}"
									src="${resource(dir: '/images/uploads/product', file: product?.smallImage?.imageUrl)}" />
								</td>

								<td class="cartItem" align="center" valign="center"
									style="width: 200px;">
									${product?.pdProductName} <br /> ${product?.pdDescription}
								</td>

								<td class="cartItem" align="center" valign="center" style="width: 50px;">
									<g:textField id="quantity_${i}" name="shoppingCartItem.quantity"
											maxlength="3"  
											value="${c.quantity}" size="3" />
									<br />
									<g:remoteLink controller="shoppingCart" action="removeFromShoppingCart" params="[productId:product.pdProductId]">
										Remove
									</g:remoteLink>
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
												  url: ${g.createLink(controller:"product",action:"getProductPrice")},
												  data: {productId:$('#productId_${i}').val(),quantity:$('#quantity_${i}').val()},
												  success: function(data) {
													  alert(data); 
												  }
											});											
										});
									});
								</script>
							</tr>
						</g:each>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>