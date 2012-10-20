<style type="text/css">
  table {border-collapse : collapse; }
  table td{ border: 0px solid; }
  table tfoot tr{ display : none}
  table thead tr{ display : none}
</style>
<table class="cartItems" id="cartItems"
	style="width: 100%; border-left: 1px solid #B5B5B5;border-right: 1px solid #B5B5B5;border-bottom: 1px solid #B5B5B5; 
		margin-left: 0px; margin-top: -10px;">
	<thead style="height: 0px;">
		<tr style="height: 0px;">
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Shape</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Carat</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Cut</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Color</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Clarity</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Price</th>

			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Polish</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">Symmetry</th>
			<th class="cartItemsHeader" align="center" width="20px" height="0px" style="height: 0px;">FLUORESCENCE</th>
			<th class="cartItemsHeader" align="center" width="20px"height="0px"  style="height: 0px;">Details</th>
		</tr>
	</thead>
	<tbody>
		<g:each in="${diamondList}" var="d" status="i">
			<tr style="border: 1px dotted #B5B5B5;">
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;"><span style="text-align: center;">
						${d.shape}
				</span></td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.carat}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.cut}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.color}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.clarity}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.getProductPrice(new Date())}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.polish}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.symmetry}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;">
					${d.fluorescence}
				</td>
				<td class="cartItem" align="center" valign="center"
					style="width: 20px;"><g:link action="viewDetailDiamond"
						id="${d.pdProductId}" class="product-box-link">
			Details
		</g:link></td>
			</tr>
		</g:each>
	</tbody>
</table>
<g:if test="${params.showNext != 'false'}">
	<div class="scroll" data-ui="jscroll-default">
		<g:link controller="diamond" action="list"
			params="[offset:params.nextCount,template:'gridTr']">
				next
		</g:link>
	</div>
</g:if>