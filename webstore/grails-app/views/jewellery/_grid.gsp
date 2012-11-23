<%@page import="com.openappengine.enums.SortOrder"%>

<div id="product-list" class="ajax" style="width: 100%;">
	<div class="pager result-box">
			<span class="result">
				${jewelleryInstanceTotal} Results
			</span>
			
			<g:hiddenField name="filterMinPrice" value="${params.minPrice}"/>
			<g:hiddenField name="filterMaxPrice" value="${params.maxPrice}"/>
			
			Sort By :
			<g:select name="sortBy" from="${SortOrder.values()}" value="${params.sortBy}" 
				optionKey="key" style="margin-right: 40px;"/>
			
			<g:paginate total="${jewelleryInstanceTotal}" /> 
	</div>
	
	<g:each in="${jewelleryInstanceList}" status="i" var="productJewelleryInstance">
			<%
				if(i%4==0) {
					out << "<div class=\"row\" style='width: 100%;'>" 
				}
			 %>
			<!--
			padding-right: 25px; : add space between the products
			-->
			<div class="result-box-small" style = "height: 250px;">
				<div id="content">
					<!-- Product Name and Description -->
					<div class='product-image-thumb'>
						<g:link action="viewDetails"
							id="${productJewelleryInstance.pdProductId}"
							class="product-box-link">
							<img class="product-img"
								alt="${productJewelleryInstance.pdProductName}"
								title="${productJewelleryInstance.pdProductName}"
								src="${resource(dir: '/images/uploads/product', file: productJewelleryInstance?.smallImage?.imageUrl)}" />
						</g:link>
					</div>
					
					<!-- Product Name and Description -->
					<div class='product-name' style="margin-bottom:4px;border-top:1px solid #FAFAFA;margin-top:2px;border-top-width: 80%;">
						<g:link mapping="jewelleryProductDetail"  params="[productName:productJewelleryInstance.pdProductName]" 
							class="product-box-link">
							${fieldValue(bean: productJewelleryInstance, field: "pdProductName")}
						</g:link>
					</div>

					<!-- Product Name and Description -->
					<div class='product-price'>
						${productJewelleryInstance.getProductPrice(new Date())}
					</div>
	
<%--					<center>--%>
<%--						<div class='product-rating'>--%>
<%--							<g:hiddenField name="overall_Det_Rating_${i}"--%>
<%--								value="${productJewelleryInstance?.calculatedInfo?.averageCustomerRating}" />--%>
<%--		--%>
<%--							<table style="margin-left: -15px;">--%>
<%--								<tr>--%>
<%--									<td style="margin-left: 20px;"><span id="overall_Det_${i}"> </span></td>--%>
<%--								</tr>--%>
<%--								<tr>--%>
<%--									<g:if test="${productJewelleryInstance?.calculatedInfo?.averageCustomerRating == null}">--%>
<%--										<td>--%>
<%--											No Ratings Yet.--%>
<%--										</td>--%>
<%--									</g:if>--%>
<%--									<g:else>--%>
<%--										<td>(${productJewelleryInstance?.calculatedInfo?.averageCustomerRating}--%>
<%--											OUT OF 5)--%>
<%--										</td>--%>
<%--									</g:else>--%>
<%--								</tr>--%>
<%--							</table>--%>
<%--						</div>--%>
<%--					</center>--%>
	
					<script>
						$(function() {
							$('#overall_Det_${i}').ratings(5, $('#overall_Det_Rating_${i}').val(), true);
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
	</g:each>

</div>
