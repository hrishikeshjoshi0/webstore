<%@page import="com.openappengine.enums.SortOrder"%>

<script type="text/javascript" src="${resource(dir: 'js', file: 'common.js')}"></script>	
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.jscroll.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.ba-bbq.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'interface.js')}"></script>

<script>
	$('.infinite-scroll').jscroll({
		loadingHtml: '<img src="loading.gif" alt="Loading" /> Loading...',
		padding: 0,
		nextSelector: 'a.jscroll-next:last',
		contentSelector: 'tr'
	});
</script>
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

	<div class="infinite-scroll" data-ui="jscroll-default" style="height: 140px;overflow: scroll;">
			<g:if test="${!diamondList.isEmpty()}">
				<table class="cartItems" id="cartItems"
					style="width: 100%; 
						border-left: 1px solid #B5B5B5;border-right: 1px solid #B5B5B5;border-top: 1px solid #B5B5B5;
						margin-top:10px;margin-left:0px;">
					<thead>
						<tr>
							<th class="cartItemsHeader" align="center" width="20px">Shape</th>
							<th class="cartItemsHeader" align="center" width="20px">Carat</th>
							<th class="cartItemsHeader" align="center" width="20px">Cut</th>
							<th class="cartItemsHeader" align="center" width="20px">Color</th>
							<th class="cartItemsHeader" align="center" width="20px">Clarity</th>
							<th class="cartItemsHeader" align="center" width="20px">Price</th>
							
							<th class="cartItemsHeader" align="center" width="20px">Polish</th>
							<th class="cartItemsHeader" align="center" width="20px">Symmetry</th>
							<th class="cartItemsHeader" align="center" width="20px">FLUORESCENCE</th>
							<th class="cartItemsHeader" align="center" width="20px">Details</th>
						</tr>
					</thead>
					<tbody id="tbodyResult">
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
									${d.polish}
								</td>
								<td class="cartItem" align="center" valign="center" style="width: 20px;">
									${d.symmetry}
								</td>
								<td class="cartItem" align="center" valign="center" style="width: 20px;">
									${d.fluorescence}
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
				<div class="scroll" data-ui="jscroll-default">
	            	<g:link controller="diamond" action="list" params="[offset:params.nextCount,template:'gridTr']">
						next
					</g:link>
	            </div>
		</g:if>
	</div>
	
</div>
