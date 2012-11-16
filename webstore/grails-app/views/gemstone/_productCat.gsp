
<g:each in="${productTypes}" var="productType" status="i">
	<div id="productCatTab">
		<g:link mapping="gemstoneCat1"  params="[productCat1:productType.productTypeName,productTypeName:productCat1]" 
				>
			${productType.productTypeName}		
		</g:link>
	</div>
</g:each>
