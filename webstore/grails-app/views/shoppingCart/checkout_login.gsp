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

			$("#form_header").html('Guest Checkout');

			var checkoutType = $("input[name='checkoutType']").val();
			if (checkoutType == 'NEW_CUSTOMER')   {
		    	$("#add_to_cart_form").attr("action", "checkout_login_process");
		    	$("#checkout_login").attr('value','CHECKOUT AS GUEST');
		    	$("#password").val("");
		    	$("#password").attr('disabled','true');
		    } else{
		    	$("#add_to_cart_form").attr("action", $("#postUrl").val());
		    	$("#checkout_login").attr('value','MY ACCOUNT CHECKOUT');
		    	$("#password").removeAttr('disabled');
		    }
			
		    $.ajax({
		        type: 'GET',
		        url: "<g:createLink controller='shoppingCart' action='getOrderSummary' />"
			        	+ "?id=" + shoppingCartId
			        	+ "&displayCartItems=true", 
		        success: function(data) {
		            $('#orderSummary').html(data);
		        }
		    });

		    $("input[name='checkoutType']").change(function(){
		    	var checkoutType = $("input[name='checkoutType']:checked").val();	
			    if (checkoutType == 'NEW_CUSTOMER')   {
			    	$("#add_to_cart_form").attr("action", "checkout_login_process");
			    	$("#checkout_login").attr('value','CHECKOUT AS GUEST');
			    	$("#password").val("");
			    	$("#password").attr('disabled','true');
			    } else{
			    	$("#add_to_cart_form").attr("action", $("#postUrl").val());
			    	$("#checkout_login").attr('value','MY ACCOUNT CHECKOUT');
			    	$("#password").removeAttr('disabled');
			    }
			});
		});
	</script>
</head>
<body>
	<div style="">
		<div class="row">
			<div class="sixcol">
				<g:if test="${!shoppingCartInstance.cartItems.isEmpty()}">
					<g:hiddenField name="postUrl" value="${postUrl}" />
					<g:form name="add_to_cart_form" action="checkout_login_process" method="POST" controller="shoppingCart">
						<g:hiddenField name="shoppingCartId" value="${shoppingCartInstance?.shoppingCartId}" />
						<g:hiddenField name="checkout_flow" value="true" />
						
						<table id="billingAddress" style="width:100%;">
							<thead>
								<tr>
									<th colspan="2">
										<span id="form_header"></span>
									</th>
								</tr>
								<tr>
									<td colspan="2">
										<g:if test='${flash.message}'>
											<div class='login_message'>${flash.message}</div>
										</g:if>
									</td>
								</tr>
							</thead>
							<tbody>
							<tr>
								<td>
									<label for="emailAddress">
										Enter your email address
									</label>
								</td>
								<td>
									<g:textField name="emailAddress" value="${emailAddress}"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="guest_or_account">
									</label>
								</td>
								<td>
									<p>
										<g:radio id="newCustomer" name="checkoutType" value="NEW_CUSTOMER" 
												checked="${checkoutType == 'NEW_CUSTOMER'}"/>
										 I am a new customer / guest.
										(You can create an account later)
									</p>
									<p>
										<g:radio id="returningCustomer" name="checkoutType" value="RETURNING_CUSTOMER"
												checked="${checkoutType == 'RETURNING_CUSTOMER'}"/>
										 I am a returning customer.
										 My password is:
										 <g:passwordField name="password" value="${password}" />
									</p>
								</td>
							</tr>
							</tbody>
						</table>

						<table>
							<tr>
								<td colspan="2"><input type="submit" id="checkout_login"
									class="continue_checkout" value="CONTINUE CHECKOUT" /></td>
							</tr>
						</table>

					</g:form>
				</g:if>
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