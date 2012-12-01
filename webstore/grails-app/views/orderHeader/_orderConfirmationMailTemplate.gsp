<%@ page import="com.openappengine.model.cart.ShoppingCart"%>
<%@ page import="com.openappengine.model.product.Product"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="mail">
<title>Payment Successful.</title>
</head>
<body>
	<br/><br/>
	<span class="title">Payment Successful - ${payment.transactionId} </span>
	<hr/>
	
	<div style="">
		<div class="row">
			<!-- Cart Items -->
			<div class="ninecol">
				<div id="transactionSummary" class="transactionSummary">
					<div class="transSummaryItem">
						<span class="transSummaryItemName">Transaction ID:</span>
						<span class="transSummaryItemValue">${payment.transactionId}</span>
					</div>
				</div>
				
				<p style="float: left;font-weight: bold;">
					Your purchase is complete. Information for your reference can be seen below:
				</p>
				<table class="cartItems" id="cartItems"
					style="width: 100%; border: 1px solid #B5B5B5;">
					<thead>
						<tr>
							<th class="cartItemsHeader" align="center">Item</th>
							<th class="cartItemsHeader" align="center">Quantity</th>
							<th class="cartItemsHeader" align="center">Price</th>
						</tr>
					</thead>
					<tbody>
						<g:each var="paymentItem" in="${payment.paymentItems}">
							<tr style="border: 1px dotted #B5B5B5;">
								<td class="cartItem" align="center" valign="center">
									${paymentItem.itemName.encodeAsHTML()}
								</td>
								
								<td class="cartItem" align="center" valign="center">
									${paymentItem.quantity}
								</td>
								
								<td class="cartItem" align="center" valign="center">
									${paymentItem.amount * paymentItem.quantity}	
								</td>
							</tr>
						</g:each>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>