
<%@ page import="com.openappengine.model.product.Gemstone" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodGemstone.label', default: 'ProdGemstone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-prodGemstone" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prodGemstone">
			
				<g:if test="${prodGemstoneInstance?.pdProductId}">
				<li class="fieldcontain">
					<span id="pdProductId-label" class="property-label"><g:message code="prodGemstone.pdProductId.label" default="Pd Product Id" /></span>
					
						<span class="property-value" aria-labelledby="pdProductId-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdProductId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.carat}">
				<li class="fieldcontain">
					<span id="carat-label" class="property-label"><g:message code="prodGemstone.carat.label" default="Carat" /></span>
					
						<span class="property-value" aria-labelledby="carat-label"><g:fieldValue bean="${prodGemstoneInstance}" field="carat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.clarity}">
				<li class="fieldcontain">
					<span id="clarity-label" class="property-label"><g:message code="prodGemstone.clarity.label" default="Clarity" /></span>
					
						<span class="property-value" aria-labelledby="clarity-label"><g:fieldValue bean="${prodGemstoneInstance}" field="clarity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="prodGemstone.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${prodGemstoneInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.cut}">
				<li class="fieldcontain">
					<span id="cut-label" class="property-label"><g:message code="prodGemstone.cut.label" default="Cut" /></span>
					
						<span class="property-value" aria-labelledby="cut-label"><g:fieldValue bean="${prodGemstoneInstance}" field="cut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.grade}">
				<li class="fieldcontain">
					<span id="grade-label" class="property-label"><g:message code="prodGemstone.grade.label" default="Grade" /></span>
					
						<span class="property-value" aria-labelledby="grade-label"><g:fieldValue bean="${prodGemstoneInstance}" field="grade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.hardness}">
				<li class="fieldcontain">
					<span id="hardness-label" class="property-label"><g:message code="prodGemstone.hardness.label" default="Hardness" /></span>
					
						<span class="property-value" aria-labelledby="hardness-label"><g:fieldValue bean="${prodGemstoneInstance}" field="hardness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="prodGemstone.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${prodGemstoneInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.origin}">
				<li class="fieldcontain">
					<span id="origin-label" class="property-label"><g:message code="prodGemstone.origin.label" default="Origin" /></span>
					
						<span class="property-value" aria-labelledby="origin-label"><g:fieldValue bean="${prodGemstoneInstance}" field="origin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdAmountUomType}">
				<li class="fieldcontain">
					<span id="pdAmountUomType-label" class="property-label"><g:message code="prodGemstone.pdAmountUomType.label" default="Pd Amount Uom Type" /></span>
					
						<span class="property-value" aria-labelledby="pdAmountUomType-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdAmountUomType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdComments}">
				<li class="fieldcontain">
					<span id="pdComments-label" class="property-label"><g:message code="prodGemstone.pdComments.label" default="Pd Comments" /></span>
					
						<span class="property-value" aria-labelledby="pdComments-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdCreatedDate}">
				<li class="fieldcontain">
					<span id="pdCreatedDate-label" class="property-label"><g:message code="prodGemstone.pdCreatedDate.label" default="Pd Created Date" /></span>
					
						<span class="property-value" aria-labelledby="pdCreatedDate-label"><g:formatDate date="${prodGemstoneInstance?.pdCreatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdDescription}">
				<li class="fieldcontain">
					<span id="pdDescription-label" class="property-label"><g:message code="prodGemstone.pdDescription.label" default="Pd Description" /></span>
					
						<span class="property-value" aria-labelledby="pdDescription-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdFixedAmount}">
				<li class="fieldcontain">
					<span id="pdFixedAmount-label" class="property-label"><g:message code="prodGemstone.pdFixedAmount.label" default="Pd Fixed Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdFixedAmount-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdFixedAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdInternalName}">
				<li class="fieldcontain">
					<span id="pdInternalName-label" class="property-label"><g:message code="prodGemstone.pdInternalName.label" default="Pd Internal Name" /></span>
					
						<span class="property-value" aria-labelledby="pdInternalName-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdInternalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdIntroductionDate}">
				<li class="fieldcontain">
					<span id="pdIntroductionDate-label" class="property-label"><g:message code="prodGemstone.pdIntroductionDate.label" default="Pd Introduction Date" /></span>
					
						<span class="property-value" aria-labelledby="pdIntroductionDate-label"><g:formatDate date="${prodGemstoneInstance?.pdIntroductionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdIsVirtual}">
				<li class="fieldcontain">
					<span id="pdIsVirtual-label" class="property-label"><g:message code="prodGemstone.pdIsVirtual.label" default="Pd Is Virtual" /></span>
					
						<span class="property-value" aria-labelledby="pdIsVirtual-label"><g:formatBoolean boolean="${prodGemstoneInstance?.pdIsVirtual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdPiecesIncluded}">
				<li class="fieldcontain">
					<span id="pdPiecesIncluded-label" class="property-label"><g:message code="prodGemstone.pdPiecesIncluded.label" default="Pd Pieces Included" /></span>
					
						<span class="property-value" aria-labelledby="pdPiecesIncluded-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdPiecesIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdProductName}">
				<li class="fieldcontain">
					<span id="pdProductName-label" class="property-label"><g:message code="prodGemstone.pdProductName.label" default="Pd Product Name" /></span>
					
						<span class="property-value" aria-labelledby="pdProductName-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdProductName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdQuantityIncluded}">
				<li class="fieldcontain">
					<span id="pdQuantityIncluded-label" class="property-label"><g:message code="prodGemstone.pdQuantityIncluded.label" default="Pd Quantity Included" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityIncluded-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdQuantityIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdQuantityUom}">
				<li class="fieldcontain">
					<span id="pdQuantityUom-label" class="property-label"><g:message code="prodGemstone.pdQuantityUom.label" default="Pd Quantity Uom" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityUom-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdQuantityUom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdRequireAmount}">
				<li class="fieldcontain">
					<span id="pdRequireAmount-label" class="property-label"><g:message code="prodGemstone.pdRequireAmount.label" default="Pd Require Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireAmount-label"><g:formatBoolean boolean="${prodGemstoneInstance?.pdRequireAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdRequireInventory}">
				<li class="fieldcontain">
					<span id="pdRequireInventory-label" class="property-label"><g:message code="prodGemstone.pdRequireInventory.label" default="Pd Require Inventory" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireInventory-label"><g:formatBoolean boolean="${prodGemstoneInstance?.pdRequireInventory}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdReturnable}">
				<li class="fieldcontain">
					<span id="pdReturnable-label" class="property-label"><g:message code="prodGemstone.pdReturnable.label" default="Pd Returnable" /></span>
					
						<span class="property-value" aria-labelledby="pdReturnable-label"><g:formatBoolean boolean="${prodGemstoneInstance?.pdReturnable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdSalesDiscWhenNotAvail}">
				<li class="fieldcontain">
					<span id="pdSalesDiscWhenNotAvail-label" class="property-label"><g:message code="prodGemstone.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscWhenNotAvail-label"><g:formatBoolean boolean="${prodGemstoneInstance?.pdSalesDiscWhenNotAvail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdSalesDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSalesDiscontinuationDate-label" class="property-label"><g:message code="prodGemstone.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscontinuationDate-label"><g:formatDate date="${prodGemstoneInstance?.pdSalesDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdSupportDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSupportDiscontinuationDate-label" class="property-label"><g:message code="prodGemstone.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSupportDiscontinuationDate-label"><g:formatDate date="${prodGemstoneInstance?.pdSupportDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdTaxable}">
				<li class="fieldcontain">
					<span id="pdTaxable-label" class="property-label"><g:message code="prodGemstone.pdTaxable.label" default="Pd Taxable" /></span>
					
						<span class="property-value" aria-labelledby="pdTaxable-label"><g:formatBoolean boolean="${prodGemstoneInstance?.pdTaxable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdWeight}">
				<li class="fieldcontain">
					<span id="pdWeight-label" class="property-label"><g:message code="prodGemstone.pdWeight.label" default="Pd Weight" /></span>
					
						<span class="property-value" aria-labelledby="pdWeight-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.pdWeightUomId}">
				<li class="fieldcontain">
					<span id="pdWeightUomId-label" class="property-label"><g:message code="prodGemstone.pdWeightUomId.label" default="Pd Weight Uom Id" /></span>
					
						<span class="property-value" aria-labelledby="pdWeightUomId-label"><g:fieldValue bean="${prodGemstoneInstance}" field="pdWeightUomId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.prodProductPrices}">
				<li class="fieldcontain">
					<span id="prodProductPrices-label" class="property-label"><g:message code="prodGemstone.prodProductPrices.label" default="Prod Product Prices" /></span>
					
						<g:each in="${prodGemstoneInstance.prodProductPrices}" var="p">
						<span class="property-value" aria-labelledby="prodProductPrices-label"><g:link controller="prodProductPrice" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.shape}">
				<li class="fieldcontain">
					<span id="shape-label" class="property-label"><g:message code="prodGemstone.shape.label" default="Shape" /></span>
					
						<span class="property-value" aria-labelledby="shape-label"><g:fieldValue bean="${prodGemstoneInstance}" field="shape"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.starSharpness}">
				<li class="fieldcontain">
					<span id="starSharpness-label" class="property-label"><g:message code="prodGemstone.starSharpness.label" default="Star Sharpness" /></span>
					
						<span class="property-value" aria-labelledby="starSharpness-label"><g:fieldValue bean="${prodGemstoneInstance}" field="starSharpness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.stoneId}">
				<li class="fieldcontain">
					<span id="stoneId-label" class="property-label"><g:message code="prodGemstone.stoneId.label" default="Stone Id" /></span>
					
						<span class="property-value" aria-labelledby="stoneId-label"><g:fieldValue bean="${prodGemstoneInstance}" field="stoneId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prodGemstoneInstance?.treatment}">
				<li class="fieldcontain">
					<span id="treatment-label" class="property-label"><g:message code="prodGemstone.treatment.label" default="Treatment" /></span>
					
						<span class="property-value" aria-labelledby="treatment-label"><g:fieldValue bean="${prodGemstoneInstance}" field="treatment"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${prodGemstoneInstance?.pdProductId}" />
					<g:link class="edit" action="edit" id="${prodGemstoneInstance?.pdProductId}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
