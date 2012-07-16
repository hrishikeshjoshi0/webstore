<div id="product-list" class="ajax" style="width: 100%;">
	<g:each in="${prodGemstoneInstanceList}" status="i" var="productGemStoneInstance">
			<%
				if(i%3==0) {
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

					<!-- Create CSS classes for each tag -->
					<!-- 
					Product Tags (GIFs for individual tags to be displayed)
					For e.g. NEW,FEATURED,SALE etc. 
					-->
					<div class="product-tag">
						<span class="new"> NEW </span>
					</div>

					<!-- Product Name and Description -->
					<div class='product-name'>
						<g:link action="viewDetails"
							id="${productGemStoneInstance.pdProductId}"
							class="product-box-link">
							${fieldValue(bean: productGemStoneInstance, field: "pdProductName")}
						</g:link>
					</div>

					<div class='product-name'>
						<g:link action="viewDetails"
							id="${productGemStoneInstance.pdProductId}"
							class="product-box-link">
							${fieldValue(bean: productGemStoneInstance, field: "pdDescription")}
						</g:link>
					</div>

					<!-- Product Name and Description -->
					<div class='product-price'>
						${productGemStoneInstance.getProductPrice(new Date())}
					</div>
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
		<g:paginate total="${prodGemstoneInstanceTotal}" />
	</div>
	 -->
</div>
