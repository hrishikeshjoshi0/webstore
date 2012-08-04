	<g:each in="${productTypes}" var="productType" status="i">
		<g:if test="${i%8==0}">
			<ul class="productTypeMenuLinkList">
		</g:if>
		<li class="productTypeMenuLink">
			<g:link action="list" controller="gemstone" params="[productTypeId:productType.productTypeId]"
					rel="${productType.productTypeId}">
				${productType.productTypeName}		
			</g:link>
		</li>
		<g:if test="${i%8==7}">
			</ul>
		</g:if>
	</g:each>