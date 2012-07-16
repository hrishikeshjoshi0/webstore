
<%@ page import="com.openappengine.product.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.pdAmountUomType}">
				<li class="fieldcontain">
					<span id="pdAmountUomType-label" class="property-label"><g:message code="product.pdAmountUomType.label" default="Pd Amount Uom Type" /></span>
					
						<span class="property-value" aria-labelledby="pdAmountUomType-label"><g:fieldValue bean="${productInstance}" field="pdAmountUomType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdComments}">
				<li class="fieldcontain">
					<span id="pdComments-label" class="property-label"><g:message code="product.pdComments.label" default="Pd Comments" /></span>
					
						<span class="property-value" aria-labelledby="pdComments-label"><g:fieldValue bean="${productInstance}" field="pdComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdCreatedDate}">
				<li class="fieldcontain">
					<span id="pdCreatedDate-label" class="property-label"><g:message code="product.pdCreatedDate.label" default="Pd Created Date" /></span>
					
						<span class="property-value" aria-labelledby="pdCreatedDate-label"><g:formatDate date="${productInstance?.pdCreatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdDescription}">
				<li class="fieldcontain">
					<span id="pdDescription-label" class="property-label"><g:message code="product.pdDescription.label" default="Pd Description" /></span>
					
						<span class="property-value" aria-labelledby="pdDescription-label"><g:fieldValue bean="${productInstance}" field="pdDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdFixedAmount}">
				<li class="fieldcontain">
					<span id="pdFixedAmount-label" class="property-label"><g:message code="product.pdFixedAmount.label" default="Pd Fixed Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdFixedAmount-label"><g:fieldValue bean="${productInstance}" field="pdFixedAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdInternalName}">
				<li class="fieldcontain">
					<span id="pdInternalName-label" class="property-label"><g:message code="product.pdInternalName.label" default="Pd Internal Name" /></span>
					
						<span class="property-value" aria-labelledby="pdInternalName-label"><g:fieldValue bean="${productInstance}" field="pdInternalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdIntroductionDate}">
				<li class="fieldcontain">
					<span id="pdIntroductionDate-label" class="property-label"><g:message code="product.pdIntroductionDate.label" default="Pd Introduction Date" /></span>
					
						<span class="property-value" aria-labelledby="pdIntroductionDate-label"><g:formatDate date="${productInstance?.pdIntroductionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdIsVirtual}">
				<li class="fieldcontain">
					<span id="pdIsVirtual-label" class="property-label"><g:message code="product.pdIsVirtual.label" default="Pd Is Virtual" /></span>
					
						<span class="property-value" aria-labelledby="pdIsVirtual-label"><g:formatBoolean boolean="${productInstance?.pdIsVirtual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdPiecesIncluded}">
				<li class="fieldcontain">
					<span id="pdPiecesIncluded-label" class="property-label"><g:message code="product.pdPiecesIncluded.label" default="Pd Pieces Included" /></span>
					
						<span class="property-value" aria-labelledby="pdPiecesIncluded-label"><g:fieldValue bean="${productInstance}" field="pdPiecesIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdProductName}">
				<li class="fieldcontain">
					<span id="pdProductName-label" class="property-label"><g:message code="product.pdProductName.label" default="Pd Product Name" /></span>
					
						<span class="property-value" aria-labelledby="pdProductName-label"><g:fieldValue bean="${productInstance}" field="pdProductName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdProductType}">
				<li class="fieldcontain">
					<span id="pdProductType-label" class="property-label"><g:message code="product.pdProductType.label" default="Pd Product Type" /></span>
					
						<span class="property-value" aria-labelledby="pdProductType-label"><g:fieldValue bean="${productInstance}" field="pdProductType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdQuantityIncluded}">
				<li class="fieldcontain">
					<span id="pdQuantityIncluded-label" class="property-label"><g:message code="product.pdQuantityIncluded.label" default="Pd Quantity Included" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityIncluded-label"><g:fieldValue bean="${productInstance}" field="pdQuantityIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdQuantityUom}">
				<li class="fieldcontain">
					<span id="pdQuantityUom-label" class="property-label"><g:message code="product.pdQuantityUom.label" default="Pd Quantity Uom" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityUom-label"><g:fieldValue bean="${productInstance}" field="pdQuantityUom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdRequireAmount}">
				<li class="fieldcontain">
					<span id="pdRequireAmount-label" class="property-label"><g:message code="product.pdRequireAmount.label" default="Pd Require Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireAmount-label"><g:formatBoolean boolean="${productInstance?.pdRequireAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdRequireInventory}">
				<li class="fieldcontain">
					<span id="pdRequireInventory-label" class="property-label"><g:message code="product.pdRequireInventory.label" default="Pd Require Inventory" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireInventory-label"><g:formatBoolean boolean="${productInstance?.pdRequireInventory}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdReturnable}">
				<li class="fieldcontain">
					<span id="pdReturnable-label" class="property-label"><g:message code="product.pdReturnable.label" default="Pd Returnable" /></span>
					
						<span class="property-value" aria-labelledby="pdReturnable-label"><g:formatBoolean boolean="${productInstance?.pdReturnable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdSalesDiscWhenNotAvail}">
				<li class="fieldcontain">
					<span id="pdSalesDiscWhenNotAvail-label" class="property-label"><g:message code="product.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscWhenNotAvail-label"><g:formatBoolean boolean="${productInstance?.pdSalesDiscWhenNotAvail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdSalesDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSalesDiscontinuationDate-label" class="property-label"><g:message code="product.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscontinuationDate-label"><g:formatDate date="${productInstance?.pdSalesDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdSupportDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSupportDiscontinuationDate-label" class="property-label"><g:message code="product.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSupportDiscontinuationDate-label"><g:formatDate date="${productInstance?.pdSupportDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdTaxable}">
				<li class="fieldcontain">
					<span id="pdTaxable-label" class="property-label"><g:message code="product.pdTaxable.label" default="Pd Taxable" /></span>
					
						<span class="property-value" aria-labelledby="pdTaxable-label"><g:formatBoolean boolean="${productInstance?.pdTaxable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdWeight}">
				<li class="fieldcontain">
					<span id="pdWeight-label" class="property-label"><g:message code="product.pdWeight.label" default="Pd Weight" /></span>
					
						<span class="property-value" aria-labelledby="pdWeight-label"><g:fieldValue bean="${productInstance}" field="pdWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pdWeightUomId}">
				<li class="fieldcontain">
					<span id="pdWeightUomId-label" class="property-label"><g:message code="product.pdWeightUomId.label" default="Pd Weight Uom Id" /></span>
					
						<span class="property-value" aria-labelledby="pdWeightUomId-label"><g:fieldValue bean="${productInstance}" field="pdWeightUomId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.prodProductPrices}">
				<li class="fieldcontain">
					<span id="prodProductPrices-label" class="property-label"><g:message code="product.prodProductPrices.label" default="Prod Product Prices" /></span>
					
						<g:each in="${productInstance.prodProductPrices}" var="p">
						<span class="property-value" aria-labelledby="prodProductPrices-label"><g:link controller="prodProductPrice" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productInstance?.id}" />
					<g:link class="edit" action="edit" id="${productInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
