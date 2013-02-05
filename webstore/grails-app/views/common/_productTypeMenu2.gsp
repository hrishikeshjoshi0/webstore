	<g:each in="${productTypes}" var="productType" status="i">
		<g:if test="${i%8==0}">
			<ul class="productTypeMenuLinkList">
		</g:if>
		<li class="productTypeMenuLink">
			<g:link mapping="jewelleryProductType" params="[productTypeName:productType.productTypeName.replaceAll(' ', '-')]"
					rel="${productType.productTypeId}">
				${productType.productTypeName}		
			</g:link>
		</li>
		<g:if test="${i%8==7}">
			</ul>
		</g:if>
	</g:each>