<ul>
<g:each in="${productTypes}" var="productType" status="i">
	<li class="productTypeFilter">
		<g:link action="list" controller="gemstone" params="[productTypeId:productType.productTypeId]"
				rel="${productType.productTypeId}" 
				class="productTypeFilterLink">
			${productType.productTypeName}		
		</g:link>
	</li>
</g:each>
</ul>