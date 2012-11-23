<ul>
<g:each in="${productTypes}" var="productType" status="i">
	<li class="productTypeFilter">
		<g:link mapping="jewelleryProductType"  params="[productTypeName:productType.productTypeName]"
				rel="${productType.productTypeId}" 
				class="productTypeFilterLink">
			${productType.productTypeName}		
		</g:link>
	</li>
</g:each>
</ul>