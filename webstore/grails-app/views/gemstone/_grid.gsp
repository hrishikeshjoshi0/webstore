
<%@page import="com.openappengine.enums.SortOrder"%>
<div id="product-list" class="ajax" style="width: 100%;">
	<div class="pager result-box" style="width:100%;color: #FAFAFA;">
			<span class="result">
				${prodGemstoneInstanceTotal} Results
			</span>
			
			Sort By :
			<g:select name="sortBy" from="${SortOrder.values()}" value="${params.sortBy}" 
				optionKey="key" style="margin-right: 40px;"/>
				
			<g:paginate total="${prodGemstoneInstanceTotal}" /> 
	</div>
	
	<g:each in="${prodGemstoneInstanceList}" status="i" var="productGemStoneInstance">
			<%
				if(i%4==0) {
					out << "<div class=\"row\" style=\"width: 100%\">" 
				}
			 %>
			<!--
			padding-right: 25px; : add space between the products
			-->
			<div class="box-small">
				<div id="content">
					<g:link action="viewDetails"
						id="${productGemStoneInstance.pdProductId}"
						class="product-box-link">
						<img class="product-img"
							alt="${productGemStoneInstance.pdProductName}"
							title="${productGemStoneInstance.pdProductName}"
							src="${resource(dir: '/images/uploads/product', file: productGemStoneInstance?.smallImage?.imageUrl)}" />
					</g:link>

					<!-- Product Name and Description -->
					<div class='product-name'>
						<g:link action="viewDetails"
							id="${productGemStoneInstance.pdProductId}"
							class="product-box-link">
							${fieldValue(bean: productGemStoneInstance, field: "pdProductName")}
						</g:link>
					</div>

					<!-- Product Name and Description -->
					<div class='product-price'>
						${productGemStoneInstance.getProductPrice(new Date())}
					</div>
					
					<div>
						<table style="margin-left: -15px;">
							<tr>
								<td>Overall Rating</td>
								<td><span id="overall_Det"> </span></td>
								<td>
									(${prodGemstoneInstance?.calculatedInfo?.averageCustomerRating} OUT OF 5)
								</td>
							</tr>
						</table>	
					</div>
					
					<script>
						$(function() {
							$('#overall_Det').ratings(5, $('#overall_Det_Rating').val(), true);
						});
					</script>	
				</div>
			</div>
			<!--  -->
		<%
			if(i%4==3) {
				out << "</div>" 
			}
		 %>
		<!--  -->
	</g:each>

	<!-- 
	<div class="pager">
		<g:paginate total="${prodGemstoneInstanceTotal}" />
	</div>
	 -->
</div>
