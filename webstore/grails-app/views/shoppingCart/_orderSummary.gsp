<%@ page import="com.openappengine.model.cart.ShoppingCart"%>
<%@ page import="com.openappengine.model.product.Product"%>

<g:if test="${!shoppingCartInstance.cartItems.isEmpty() && displayCartItems}">
	<table class="cartItems" id="cartItems"
		style="width: 100%; border: 1px solid #B5B5B5;">
		<thead>
			<tr>
				<th class="cartItemsHeader" align="center" >Quantity</th>
				<th class="cartItemsHeader" align="center" >Item</th>
				<th class="cartItemsHeader" align="center" ></th>
			</tr>
		</thead>
		<tbody>
			<g:each in="${shoppingCartInstance.cartItems}" var="c" status="i">
				<tr style="border: 1px dotted #B5B5B5;">
					<g:set var="product" value="${Product.get(c?.productId)}" />

					<g:hiddenField id="productId_${i}" name="productId"
						value="${product?.pdProductId}" />
					
					<td align="center">
						${c?.quantity } 
					</td>	
						
					<td align="left" valign="top" style="width: 120px;">
						<img
							class="product-img-det" style="width: 50px; height: 50px;"
							alt="${product?.pdProductName}" title="${product?.pdProductName}"
							src="${resource(dir: '/images/uploads/product', file: product?.smallImage?.imageUrl)}" />
					</td>
					
					<td align="left" valign="top" style="width: 120px;">
						${product?.pdProductName}	
					</td>
				</tr>
			</g:each>
		</tbody>
	</table>
</g:if>

<table class="cartItems" id="cartItems"
	style="width: 100%; border: 1px solid #B5B5B5;">
	<thead>
		<tr>
			<th class="cartItemsHeader" align="center" colspan="2">Order
				Summary</th>
		</tr>
	</thead>
	<tbody>
		<tr style="border: 0px;">
			<td>Subtotal</td>
			<td>
				${orderSummary.subtotal}
			</td>
		</tr>
		<tr style="border: 0px;">
			<td>Discount</td>
			<td>
				${orderSummary.discount}
			</td>
		</tr>
		<tr style="border: 0px;">
			<td>Shipping</td>
			<td>
				${orderSummary.shipping}
			</td>
		</tr>
		<tr style="border: 0px;">
			<td>Taxes</td>
			<td>
				${orderSummary.tax}
			</td>
		</tr>
		<tr style="border: 0px;">
			<td>Total</td>
			<td>
				${orderSummary.total}
			</td>
		</tr>
	</tbody>
</table>