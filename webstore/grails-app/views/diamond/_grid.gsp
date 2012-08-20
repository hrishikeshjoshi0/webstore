<%@page import="com.openappengine.enums.SortOrder"%>

<div id="product-list" class="ajax" style="width: 100%;">
	<h1 class="page-title">
		${params.pageHeader}
	</h1>
	
	<div class="pager result-box" style="width:100%;color: #FAFAFA;">
			<span class="result">
				${diamondInstanceTotal} Results
			</span>
			
			<g:hiddenField name="filterMinPrice" value="${params.minPrice}"/>
			<g:hiddenField name="filterMaxPrice" value="${params.maxPrice}"/>
			
			Sort By :
			<g:select name="sortBy" from="${SortOrder.values()}" value="${params.sortBy}" 
				optionKey="key" style="margin-right: 40px;"/>
				
			<g:paginate total="${diamondInstanceTotal}" /> 
	</div>
	
	<g:each in="${diamondInstanceList}" status="i" var="diamondInstance">
			<%
				if(i%3==0) {
					out << "<div class='row' style='width: 100%;'>" 
				}
			 %>
			<!--
			padding-right: 25px; : add space between the products
			-->
			<div class="box-small">
				<div id="content">
					
					<!-- Product Name and Description -->
					<div class='product-image-thumb'>
						<g:link action="viewDetails"
							id="${diamondInstance.pdProductId}"
							class="product-box-link">
							<img class="product-img"
								alt="${diamondInstance.pdProductName}"
								title="${diamondInstance.pdProductName}"
								src="${resource(dir: '/images/uploads/product', file: diamondInstance?.smallImage?.imageUrl)}" />
						</g:link>
					</div>

					<!-- Product Name and Description -->
					<div class='product-name'>
						<g:link action="viewDetails"
							id="${diamondInstance.pdProductId}"
							class="product-box-link">
							${fieldValue(bean: diamondInstance, field: "pdProductName")}
						</g:link>
					</div>

					<!-- Product Name and Description -->
					<div class='product-price'>
						${diamondInstance.getProductPrice(new Date())}
					</div>
	
					<div class='product-rating'>
						<g:hiddenField name="overall_Det_Rating_${i}"
							value="${diamondInstance?.calculatedInfo?.averageCustomerRating}" />
	
						<table style="margin-left: -15px;">
							<tr>
								<td><span id="overall_Det_${i}"> </span></td>
							</tr>
							<tr>
								<g:if test="${diamondInstance?.calculatedInfo?.averageCustomerRating == null}">
									<td>
										No Ratings Yet.
									</td>
								</g:if>
								<g:else>
									<td>(${diamondInstance?.calculatedInfo?.averageCustomerRating}
										OUT OF 5)
									</td>
								</g:else>
							</tr>
						</table>
					</div>
	
					<script>
						$(function() {
							$('#overall_Det_${i}').ratings(5, $('#overall_Det_Rating_${i}').val(), true);
						});
					</script>	
				</div>
			</div>
			<!--  -->
		<%
			if(i%3==2) {
				out << "</div>" 
			}
		 %>
		<!--  -->
	</g:each>

	<!-- 
	<div class="pager">
		<g:paginate total="${diamondInstanceTotal}" />
	</div>
	 -->
</div>
