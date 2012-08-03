<ul>
<g:each in="${productTypes}" var="productType" status="i">
	<li>
	<g:link action="list" controller="gemstone" params="[productTypeId:productType.productTypeId]">
		${productType.productTypeName}		
	</g:link>
	</li>
</g:each>
</ul>