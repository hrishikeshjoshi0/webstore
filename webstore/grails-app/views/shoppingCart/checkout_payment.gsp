<%@ page import="com.openappengine.model.cart.ShoppingCart"%>
<%@ page import="com.openappengine.model.product.Product"%>

<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName"
		value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
	<title>Shopping Cart</title>
	<style type="text/css">
		div.PayPalLogo {
			text-align: center;
			margin: 0;
			padding: 0;
			width: 90px;
			font: normal 7px arial, helvetica, san-serif;
			line-height: 10px;
		}
		
		div.PayPalLogo a {
			text-decoration: none;
			color: black;
		}
		
		div.PayPalLogo a:visited {
			color: black;
		}
		
		div.PayPalLogo a:active {
			color: black;
		}
		
		div.PayPalLogo a:hover {
			text-decoration: underline;
			color: black;
		}
		
		div.PayPalLogo a img {
			border: 0px;
			margin: 0px;
			text-decoration: none;
		}
	</style>
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
		});
	</script>
</head>
<body>
	<div style="">
		<div class="row">
			<!-- Cart Items -->
			<div class="fivecol">
				<g:if test="${!shoppingCartInstance.cartItems.isEmpty()}">
					<g:form name="add_to_cart_form" action="checkoutPaypal" method="POST"
											controller="shoppingCart">
						<g:hiddenField name="shoppingCartId"
							value="${shoppingCartInstance?.shoppingCartId}" />
						<table>
							<thead>
								<tr>
									<th colspan="2">
										&nbsp;
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<label for="paymentMethod">
											Payment Method
										</label>
									</td>
									<td>
										<!-- PayPal Logo -->
										<a href="#"
												onclick="javascript:window.open('https://www.paypal.com/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=500, height=350');">
												<img src="https://www.paypal.com/en_US/i/logo/PayPal_mark_37x23.gif"
													border="0" alt="PayPal Logo">
												What is Paypal ?	
										</a>
										<!-- PayPal Logo -->
									</td>
								</tr>
								<tr>
									<td>
										<label for="amount">
											Amount
										</label>
									</td>
									<td>
										${shoppingCartInstance?.totalAmt}
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" id="checkout_payment"
												class="button" value="COMPLETE ORDER" />
									</td>
								</tr>
							</tbody>
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