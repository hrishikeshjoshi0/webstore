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
	<h2 style="margin-left: 1em;">Shopping Cart</h2>
	<hr/>
	
	<div style="">
		<div id="shoppingCart" class="row">
			<div class="tencol" style="border-bottom: 1px dotted #B5B5B5;">
				<p style="float: right;">
					<g:form name="add_to_cart_form" action="addToShoppingCart"
					controller="shoppingCart">
						<g:hiddenField name="shoppingCartId"
							value="${shoppingCartInstance?.shoppingCartId}" />
						<g:submitButton class="continue_checkout" name="checkout"
							value="CONTINUE CHECKOUT" />
					</g:form>
				</p>
			</div>
		</div>

		<div class="row">
			<!-- Cart Items -->
			<div class="ninecol">
				<p style="float: right;font-weight: bold;">
					Call us! We're here to answer any questions 1-800-539-3580
				</p>
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
									class="product-img-det" style="width: 100px; height: 80px;"
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
			</div>
		</div>
	</div>
</body>
</html>