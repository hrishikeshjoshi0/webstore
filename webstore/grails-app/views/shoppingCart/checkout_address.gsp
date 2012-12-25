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
			        	+ "&displayCartItems=true", 
		        success: function(data) {
		            $('#orderSummary').html(data);
		        }
		    });

		    $('#checkout_payment').click(function(){
			    $('#add_to_cart_form').submit();
			});

		    $("#sameShippingAddress").click(function(){
				// If checked
				if ($("#sameShippingAddress").is(":checked")) {
					$("#shippingAddress").hide("fast");
				} else {
					$("#shippingAddress").show("fast");
				}
			});
			
		});
	</script>
</head>
<body>
	<div class="row">
		<div class="elevencol">
			<h1 class="page-subtitle">
				Please enter your billing address
			</h1>
			<hr/>
		</div>
	</div>
	
	<div style="">
		<div class="row">
			<div class="fivecol">
				<g:if test="${!shoppingCartInstance?.cartItems?.isEmpty()}">
					<g:form name="add_to_cart_form" action="checkout_address_process" method="POST"
											controller="shoppingCart">
						<g:hiddenField name="shoppingCartId"
							value="${shoppingCartInstance?.shoppingCartId}" />
						<table id="billingAddress" style="width:100%;">
							<thead>
								<tr>
									<th colspan="2">
										Billing Address
									</th>
								</tr>
							</thead>
							<tbody>
							<tr>
								<td>
									<label for="firstName">
										First Name
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.firstName" min="1" max="50" required="true" value="${billingAddress.firstName}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="firstName">
										Last Name
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.lastName" min="1" max="50" required="true" value="${billingAddress.lastName}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="company">
										Company
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.company" min="0" max="50" required="false" value="${billingAddress.company}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="address1">
										Address Line 1
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.addressLine1" required="true" value="${billingAddress.addressLine1}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="address2">
										Address Line 2
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.addressLine2" required="false" value="${billingAddress.addressLine2}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="landmark">
										Landmark
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.landmark" required="false" value="${billingAddress.landmark}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="country">
										Country
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.country" required="true" value="${billingAddress.country}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="state">
										State
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.state" required="true" value="${billingAddress.state}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="city">
										City
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.city" required="true" value="${billingAddress.city}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="zip">
										Zip
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.zip" required="true" value="${billingAddress.zip}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="primaryPhone">
										Primary Phone
									</label>
								</td>
								<td>
									<g:field type="text" name="billingAddress.primaryPhone" required="false" value="${billingAddress.primaryPhone}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="email">
										Email
									</label>
								</td>
								<td>
									<g:field type="email" name="billingAddress.email" required="true" value="${billingAddress.email}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="sameShippingAddress">
										Use the Same Address as Shipping Address
									</label>
								</td>
								<td>
									<g:checkBox name="sameShippingAddress" value="${params.sameShippingAddress}"/>
								</td>
							</tr>
							</tbody>
						</table>

						<table id="shippingAddress" style="display: none;width: 160%;">
							<thead>
								<tr>
									<th colspan="2">Shipping Address</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><label for="firstName"> First Name </label></td>
									<td>
										<g:field type="text" name="shippingAddress.firstName" required="true" value="${billingAddress.firstName}"/>
									</td>
								</tr>
								<tr>
									<td><label for="lastName"> Last Name </label></td>
									<td>
										<g:field type="text" name="shippingAddress.lastName" required="true" value="${shippingAddress.lastName}"/>
									</td>
								</tr>
								<tr>
									<td><label for="company"> Company </label></td>
									<td>
										<g:field type="text" name="shippingAddress.company" required="true" value="${shippingAddress.company}"/>
									</td>
								</tr>
								<tr>
									<td><label for="address1"> Address Line 1 </label></td>
									<td>
										<g:field type="text" name="shippingAddress.addressLine1" required="true" value="${shippingAddress.addressLine1}"/>
									</td>
								</tr>
								<tr>
									<td><label for="address2"> Address Line 2 </label></td>
									<td>
										<g:field type="text" name="shippingAddress.addressLine2" required="true" value="${shippingAddress.addressLine2}"/>
									</td>
								</tr>
								<tr>
									<td><label for="landmark"> Landmark </label></td>
									<td>
										<g:field type="text" name="shippingAddress.landmark" required="true" value="${shippingAddress.landmark}"/>
									</td>
								</tr>
								<tr>
								<td>
									<label for="country">
										Country
									</label>
								</td>
								<td>
									<g:field type="text" name="shippingAddress.country" required="true" value="${shippingAddress.country}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="state">
										State
									</label>
								</td>
								<td>
									<g:field type="text" name="shippingAddress.state" required="true" value="${shippingAddress.state}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="city">
										City
									</label>
								</td>
								<td>
									<g:field type="text" name="shippingAddress.city" required="true" value="${shippingAddress.city}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="zip">
										Zip
									</label>
								</td>
								<td>
									<g:field type="text" name="shippingAddress.zip" required="true" value="${shippingAddress.zip}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="primaryPhone">
										Primary Phone
									</label>
								</td>
								<td>
									<g:field type="text" name="shippingAddress.primaryPhone" required="false" value="${shippingAddress.primaryPhone}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="email">
										Email
									</label>
								</td>
								<td>
									<g:field type="email" name="shippingAddress.email" required="true" value="${shippingAddress.email}"/>
								</td>
							</tr>
							</tbody>
						</table>

						<table>
							<tr>
								<td colspan="2"><input type="submit" id="checkout_payment"
									class="button" value="CONTINUE CHECKOUT" /></td>
							</tr>
						</table>

					</g:form>
				</g:if>
			</div>
			<div class="fourcol">
				<g:if test="${!shoppingCartInstance.cartItems?.isEmpty()}">
					<div id="orderSummary">
					</div>
				</g:if>
			</div>
		</div>
	</div>
</body>
</html>