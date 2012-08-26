<%@page import="com.openappengine.model.product.Product"%>
<%@ page import="com.openappengine.model.wishlist.WishList"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'wishList.label', default: 'WishList')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<h1 class="page-title">
		My Wish List
	</h1>
	
	<div class="row">
		<!-- Cart Items -->
		<div class="ninecol">
			<g:if test="${wishList.wishListItems.isEmpty()}">
				<p style="float: left; font-weight: bold;">
					<!-- Display any instructions -->
					There are no items in your wish list.
				</p>
			</g:if>

			<g:if test="${!wishList.wishListItems.isEmpty()}">
				<table class="cartItems" id="listItems"
					style="width: 100%; border: 1px solid #B5B5B5;">
					<thead>
						<tr>
							<th class="cartItemsHeader" align="center">Item</th>
							<th class="cartItemsHeader" align="center">Description</th>
							<th class="cartItemsHeader" align="center"></th>
						</tr>
					</thead>
					<tbody>
						<g:each in="${wishList.wishListItems}" var="c" status="i">
							<tr style="border: 1px dotted #B5B5B5;">
								<g:set var="product" value="${Product.get(c.productId.toInteger())}" />

								<g:hiddenField id="productId_${i}" name="productId"
									value="${product?.pdProductId}" />

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
									<br /> 
									${product?.pdDescription}
								</td>

								<td class="cartItem" align="center" valign="center" style="width: 50px;">
									<g:link
										controller="wishList" action="removeFromWishList"
										params="[productId:product.pdProductId]">
										Remove
									</g:link>
								</td>
							</tr>
						</g:each>
					</tbody>
				</table>
			</g:if>
		</div>
	</div>
</body>
</html>