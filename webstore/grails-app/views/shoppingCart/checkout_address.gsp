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
	<h1 class="page-title">
		Please enter your billing address
	</h1>
	
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
									<g:textField value="${billingAddress.firstName}" name="billing.address.firstName"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="lastName">
										Last Name
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.lastName}" name="billing.address.lastName"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="company">
										Company
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.company}" name="billing.address.company"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="address1">
										Address Line 1
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.addressLine1}" name="billing.address.addressLine1"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="address2">
										Address Line 2
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.addressLine1}" name="billing.address.addressLine2"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="landmark">
										Landmark
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.landmark}" name="billing.address.landmark"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="city">
										City
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.city}" name="billing.address.city"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="state">
										State
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.state}" name="billing.address.state"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="country">
										Country
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.country}" name="billing.address.country"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="zip">
										Zip
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.zip}" name="billing.address.zip"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="primaryPhone">
										Primary Phone
									</label>
								</td>
								<td>
									<g:textField value="${billingAddress.primaryPhone}" name="billing.address.primaryPhone"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="email">
										Email
									</label>
								</td>
								<td>
									<g:textField name="billing.address.email" value="${billingAddress.email}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="sameShippingAddress">
										Use the Same Address as Shipping Address
									</label>
								</td>
								<td>
									<g:checkBox name="sameShippingAddress" value="${sameShippingAddress}"/>
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
									<td><g:textField name="shipping.address.firstName"
											value="${shippingAddress.firstName}" /></td>
								</tr>
								<tr>
									<td><label for="lastName"> Last Name </label></td>
									<td><g:textField name="shipping.address.lastName" value="${shippingAddress.lastName}" />
									</td>
								</tr>
								<tr>
									<td><label for="company"> Company </label></td>
									<td><g:textField name="shipping.address.company" value="${shippingAddress.company}" />
									</td>
								</tr>
								<tr>
									<td><label for="address1"> Address Line 1 </label></td>
									<td><g:textField name="shipping.address.addressLine1"
											value="${shippingAddress.addressLine1}" /></td>
								</tr>
								<tr>
									<td><label for="address2"> Address Line 2 </label></td>
									<td><g:textField name="shipping.address.addressLine2"
											value="${shippingAddress.addressLine2}" /></td>
								</tr>
								<tr>
									<td><label for="landmark"> Landmark </label></td>
									<td><g:textField name="shipping.address.landmark" value="${shippingAddress.landmark}" />
									</td>
								</tr>
								<tr>
									<td><label for="city"> City </label></td>
									<td><g:textField name="shipping.address.city" value="${shippingAddress.city}" /></td>
								</tr>
								<tr>
									<td><label for="state"> State </label></td>
									<td><g:textField name="shipping.address.state" value="${shippingAddress.state}" /></td>
								</tr>
								<tr>
									<td><label for="country"> Country </label></td>
									<td><g:textField name="shipping.address.country" value="${shippingAddress.country}" />
									</td>
								</tr>
								<tr>
									<td><label for="zip"> Zip </label></td>
									<td><g:textField name="shipping.address.zip" value="${shippingAddress.zip}" /></td>
								</tr>
								<tr>
									<td><label for="primaryPhone"> Primary Phone </label></td>
									<td><g:textField name="shipping.address.primaryPhone"
											value="${shippingAddress.primaryPhone}" /></td>
								</tr>
								<tr>
									<td><label for="email"> Email </label></td>
									<td><g:textField name="shipping.address.email" value="${shippingAddress.email}" /></td>
								</tr>
							</tbody>
						</table>

						<table>
							<tr>
								<td colspan="2"><input type="submit" id="checkout_payment"
									class="continue_checkout" value="CONTINUE CHECKOUT" /></td>
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