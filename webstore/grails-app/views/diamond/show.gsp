
<%@ page import="webstore.product.ProductDiamond" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product_Diamond.label', default: 'Product_Diamond')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product_Diamond" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product_Diamond" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product_Diamond">
			
				<g:if test="${product_DiamondInstance?.pdProductId}">
				<li class="fieldcontain">
					<span id="pdProductId-label" class="property-label"><g:message code="product_Diamond.pdProductId.label" default="Pd Product Id" /></span>
					
						<span class="property-value" aria-labelledby="pdProductId-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdProductId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.carat}">
				<li class="fieldcontain">
					<span id="carat-label" class="property-label"><g:message code="product_Diamond.carat.label" default="Carat" /></span>
					
						<span class="property-value" aria-labelledby="carat-label"><g:fieldValue bean="${product_DiamondInstance}" field="carat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.clarity}">
				<li class="fieldcontain">
					<span id="clarity-label" class="property-label"><g:message code="product_Diamond.clarity.label" default="Clarity" /></span>
					
						<span class="property-value" aria-labelledby="clarity-label"><g:fieldValue bean="${product_DiamondInstance}" field="clarity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="product_Diamond.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${product_DiamondInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.cut}">
				<li class="fieldcontain">
					<span id="cut-label" class="property-label"><g:message code="product_Diamond.cut.label" default="Cut" /></span>
					
						<span class="property-value" aria-labelledby="cut-label"><g:fieldValue bean="${product_DiamondInstance}" field="cut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.depth}">
				<li class="fieldcontain">
					<span id="depth-label" class="property-label"><g:message code="product_Diamond.depth.label" default="Depth" /></span>
					
						<span class="property-value" aria-labelledby="depth-label"><g:fieldValue bean="${product_DiamondInstance}" field="depth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.fluorescence}">
				<li class="fieldcontain">
					<span id="fluorescence-label" class="property-label"><g:message code="product_Diamond.fluorescence.label" default="Fluorescence" /></span>
					
						<span class="property-value" aria-labelledby="fluorescence-label"><g:fieldValue bean="${product_DiamondInstance}" field="fluorescence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.imageUrlDetail}">
				<li class="fieldcontain">
					<span id="imageUrlDetail-label" class="property-label"><g:message code="product_Diamond.imageUrlDetail.label" default="Image Url Detail" /></span>
					
						<span class="property-value" aria-labelledby="imageUrlDetail-label"><g:fieldValue bean="${product_DiamondInstance}" field="imageUrlDetail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.imageUrlThumb}">
				<li class="fieldcontain">
					<span id="imageUrlThumb-label" class="property-label"><g:message code="product_Diamond.imageUrlThumb.label" default="Image Url Thumb" /></span>
					
						<span class="property-value" aria-labelledby="imageUrlThumb-label"><g:fieldValue bean="${product_DiamondInstance}" field="imageUrlThumb"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.lengthWidthRatio}">
				<li class="fieldcontain">
					<span id="lengthWidthRatio-label" class="property-label"><g:message code="product_Diamond.lengthWidthRatio.label" default="Length Width Ratio" /></span>
					
						<span class="property-value" aria-labelledby="lengthWidthRatio-label"><g:fieldValue bean="${product_DiamondInstance}" field="lengthWidthRatio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdAmountUomType}">
				<li class="fieldcontain">
					<span id="pdAmountUomType-label" class="property-label"><g:message code="product_Diamond.pdAmountUomType.label" default="Pd Amount Uom Type" /></span>
					
						<span class="property-value" aria-labelledby="pdAmountUomType-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdAmountUomType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdComments}">
				<li class="fieldcontain">
					<span id="pdComments-label" class="property-label"><g:message code="product_Diamond.pdComments.label" default="Pd Comments" /></span>
					
						<span class="property-value" aria-labelledby="pdComments-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdCreatedDate}">
				<li class="fieldcontain">
					<span id="pdCreatedDate-label" class="property-label"><g:message code="product_Diamond.pdCreatedDate.label" default="Pd Created Date" /></span>
					
						<span class="property-value" aria-labelledby="pdCreatedDate-label"><g:formatDate date="${product_DiamondInstance?.pdCreatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdDescription}">
				<li class="fieldcontain">
					<span id="pdDescription-label" class="property-label"><g:message code="product_Diamond.pdDescription.label" default="Pd Description" /></span>
					
						<span class="property-value" aria-labelledby="pdDescription-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdFixedAmount}">
				<li class="fieldcontain">
					<span id="pdFixedAmount-label" class="property-label"><g:message code="product_Diamond.pdFixedAmount.label" default="Pd Fixed Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdFixedAmount-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdFixedAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdInternalName}">
				<li class="fieldcontain">
					<span id="pdInternalName-label" class="property-label"><g:message code="product_Diamond.pdInternalName.label" default="Pd Internal Name" /></span>
					
						<span class="property-value" aria-labelledby="pdInternalName-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdInternalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdIntroductionDate}">
				<li class="fieldcontain">
					<span id="pdIntroductionDate-label" class="property-label"><g:message code="product_Diamond.pdIntroductionDate.label" default="Pd Introduction Date" /></span>
					
						<span class="property-value" aria-labelledby="pdIntroductionDate-label"><g:formatDate date="${product_DiamondInstance?.pdIntroductionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdIsVirtual}">
				<li class="fieldcontain">
					<span id="pdIsVirtual-label" class="property-label"><g:message code="product_Diamond.pdIsVirtual.label" default="Pd Is Virtual" /></span>
					
						<span class="property-value" aria-labelledby="pdIsVirtual-label"><g:formatBoolean boolean="${product_DiamondInstance?.pdIsVirtual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdPiecesIncluded}">
				<li class="fieldcontain">
					<span id="pdPiecesIncluded-label" class="property-label"><g:message code="product_Diamond.pdPiecesIncluded.label" default="Pd Pieces Included" /></span>
					
						<span class="property-value" aria-labelledby="pdPiecesIncluded-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdPiecesIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdProductName}">
				<li class="fieldcontain">
					<span id="pdProductName-label" class="property-label"><g:message code="product_Diamond.pdProductName.label" default="Pd Product Name" /></span>
					
						<span class="property-value" aria-labelledby="pdProductName-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdProductName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdProductType}">
				<li class="fieldcontain">
					<span id="pdProductType-label" class="property-label"><g:message code="product_Diamond.pdProductType.label" default="Pd Product Type" /></span>
					
						<span class="property-value" aria-labelledby="pdProductType-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdProductType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdQuantityIncluded}">
				<li class="fieldcontain">
					<span id="pdQuantityIncluded-label" class="property-label"><g:message code="product_Diamond.pdQuantityIncluded.label" default="Pd Quantity Included" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityIncluded-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdQuantityIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdQuantityUom}">
				<li class="fieldcontain">
					<span id="pdQuantityUom-label" class="property-label"><g:message code="product_Diamond.pdQuantityUom.label" default="Pd Quantity Uom" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityUom-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdQuantityUom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdRequireAmount}">
				<li class="fieldcontain">
					<span id="pdRequireAmount-label" class="property-label"><g:message code="product_Diamond.pdRequireAmount.label" default="Pd Require Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireAmount-label"><g:formatBoolean boolean="${product_DiamondInstance?.pdRequireAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdRequireInventory}">
				<li class="fieldcontain">
					<span id="pdRequireInventory-label" class="property-label"><g:message code="product_Diamond.pdRequireInventory.label" default="Pd Require Inventory" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireInventory-label"><g:formatBoolean boolean="${product_DiamondInstance?.pdRequireInventory}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdReturnable}">
				<li class="fieldcontain">
					<span id="pdReturnable-label" class="property-label"><g:message code="product_Diamond.pdReturnable.label" default="Pd Returnable" /></span>
					
						<span class="property-value" aria-labelledby="pdReturnable-label"><g:formatBoolean boolean="${product_DiamondInstance?.pdReturnable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdSalesDiscWhenNotAvail}">
				<li class="fieldcontain">
					<span id="pdSalesDiscWhenNotAvail-label" class="property-label"><g:message code="product_Diamond.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscWhenNotAvail-label"><g:formatBoolean boolean="${product_DiamondInstance?.pdSalesDiscWhenNotAvail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdSalesDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSalesDiscontinuationDate-label" class="property-label"><g:message code="product_Diamond.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscontinuationDate-label"><g:formatDate date="${product_DiamondInstance?.pdSalesDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdSupportDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSupportDiscontinuationDate-label" class="property-label"><g:message code="product_Diamond.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSupportDiscontinuationDate-label"><g:formatDate date="${product_DiamondInstance?.pdSupportDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdTaxable}">
				<li class="fieldcontain">
					<span id="pdTaxable-label" class="property-label"><g:message code="product_Diamond.pdTaxable.label" default="Pd Taxable" /></span>
					
						<span class="property-value" aria-labelledby="pdTaxable-label"><g:formatBoolean boolean="${product_DiamondInstance?.pdTaxable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdWeight}">
				<li class="fieldcontain">
					<span id="pdWeight-label" class="property-label"><g:message code="product_Diamond.pdWeight.label" default="Pd Weight" /></span>
					
						<span class="property-value" aria-labelledby="pdWeight-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pdWeightUomId}">
				<li class="fieldcontain">
					<span id="pdWeightUomId-label" class="property-label"><g:message code="product_Diamond.pdWeightUomId.label" default="Pd Weight Uom Id" /></span>
					
						<span class="property-value" aria-labelledby="pdWeightUomId-label"><g:fieldValue bean="${product_DiamondInstance}" field="pdWeightUomId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.polish}">
				<li class="fieldcontain">
					<span id="polish-label" class="property-label"><g:message code="product_Diamond.polish.label" default="Polish" /></span>
					
						<span class="property-value" aria-labelledby="polish-label"><g:fieldValue bean="${product_DiamondInstance}" field="polish"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.pricePerCarat}">
				<li class="fieldcontain">
					<span id="pricePerCarat-label" class="property-label"><g:message code="product_Diamond.pricePerCarat.label" default="Price Per Carat" /></span>
					
						<span class="property-value" aria-labelledby="pricePerCarat-label"><g:fieldValue bean="${product_DiamondInstance}" field="pricePerCarat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.prodProductPrices}">
				<li class="fieldcontain">
					<span id="prodProductPrices-label" class="property-label"><g:message code="product_Diamond.prodProductPrices.label" default="Prod Product Prices" /></span>
					
						<g:each in="${product_DiamondInstance.prodProductPrices}" var="p">
						<span class="property-value" aria-labelledby="prodProductPrices-label"><g:link controller="prodProductPrice" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.shape}">
				<li class="fieldcontain">
					<span id="shape-label" class="property-label"><g:message code="product_Diamond.shape.label" default="Shape" /></span>
					
						<span class="property-value" aria-labelledby="shape-label"><g:fieldValue bean="${product_DiamondInstance}" field="shape"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.symmetry}">
				<li class="fieldcontain">
					<span id="symmetry-label" class="property-label"><g:message code="product_Diamond.symmetry.label" default="Symmetry" /></span>
					
						<span class="property-value" aria-labelledby="symmetry-label"><g:fieldValue bean="${product_DiamondInstance}" field="symmetry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${product_DiamondInstance?.table}">
				<li class="fieldcontain">
					<span id="table-label" class="property-label"><g:message code="product_Diamond.table.label" default="Table" /></span>
					
						<span class="property-value" aria-labelledby="table-label"><g:fieldValue bean="${product_DiamondInstance}" field="table"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${product_DiamondInstance?.id}" />
					<g:link class="edit" action="edit" id="${product_DiamondInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
