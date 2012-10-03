<%@page import="com.openappengine.enums.SortOrder"%>

<style>
	table {
		margin-left: -10px;
	}
	
	th.cartItemsHeader {
		font-size: 11px;
		padding: 5px;
		width: 40px;
		text-align : left;		
	}
	
	td.cartItem {
		font-size: 11px;
		padding: 5px;
	}
</style>
<div id="product-list" class="ajax" style="width: 100%;">
	<div class="pager result-box">
		<span class="result"> ${diamondInstanceTotal} Results
		</span>

		<g:hiddenField name="filterMinPrice" value="${params.minPrice}" />
		<g:hiddenField name="filterMaxPrice" value="${params.maxPrice}" />

		Sort By :
		<g:select name="sortBy" from="${SortOrder.values()}"
			value="${params.sortBy}" optionKey="key" style="margin-right: 40px;" />

		<g:paginate total="${diamondListTotal}" />
	</div>

	<g:if test="${!diamondList.isEmpty()}">
		<table class="cartItems" id="cartItems"
			style="width: 100%; border: 1px solid #B5B5B5;margin-top:10px;margin-left:0px;">
			<thead>
				<tr>
					<th class="cartItemsHeader" align="center" width="20px">Shape</th>
					<th class="cartItemsHeader" align="center" width="20px">Carat</th>
					<th class="cartItemsHeader" align="center" width="20px">Cut</th>
					<th class="cartItemsHeader" align="center" width="20px">Color</th>
					<th class="cartItemsHeader" align="center" width="20px">Clarity</th>
					<th class="cartItemsHeader" align="center" width="20px">Price</th>
					<th class="cartItemsHeader" align="center" width="20px">Details</th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${diamondList}" var="d" status="i">
					<tr style="border: 1px dotted #B5B5B5;">
						<td class="cartItem" align="center" valign="center"  style="width: 20px;">
							<span style="text-align:center;">
								${d.shape}	
							</span>
						</td>
						<td class="cartItem" align="center" valign="center" style="width: 20px;">
							${d.carat}	
						</td>
						<td class="cartItem" align="center" valign="center" style="width: 20px;">
							${d.cut}	
						</td>
						<td class="cartItem" align="center" valign="center" style="width: 20px;">
							${d.color}	
						</td>
						<td class="cartItem" align="center" valign="center" style="width: 20px;">
							${d.clarity}	
						</td>
						<td class="cartItem" align="center" valign="center" style="width: 20px;">
							${d.getProductPrice(new Date())}
						</td>
						<td class="cartItem" align="center" valign="center" style="width: 20px;">
						<g:link action="viewDetailDiamond"
							id="${d.pdProductId}"
							class="product-box-link">
							Details
							</g:link>
						
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</g:if>
</div>
