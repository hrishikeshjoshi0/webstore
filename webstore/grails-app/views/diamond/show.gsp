
<%@ page import="com.openappengine.model.product.Diamond" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diamond.label', default: 'Diamond')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-diamond" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-diamond" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list diamond">
			
				<g:if test="${diamondInstance?.pdProductId}">
				<li class="fieldcontain">
					<span id="pdProductId-label" class="property-label"><g:message code="diamond.pdProductId.label" default="Pd Product Id" /></span>
					
						<span class="property-value" aria-labelledby="pdProductId-label"><g:fieldValue bean="${diamondInstance}" field="pdProductId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.calculatedInfo}">
				<li class="fieldcontain">
					<span id="calculatedInfo-label" class="property-label"><g:message code="diamond.calculatedInfo.label" default="Calculated Info" /></span>
					
						<span class="property-value" aria-labelledby="calculatedInfo-label"><g:link controller="productCalculatedInfo" action="show" id="${diamondInstance?.calculatedInfo?.id}">${diamondInstance?.calculatedInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.carat}">
				<li class="fieldcontain">
					<span id="carat-label" class="property-label"><g:message code="diamond.carat.label" default="Carat" /></span>
					
						<span class="property-value" aria-labelledby="carat-label"><g:fieldValue bean="${diamondInstance}" field="carat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.clarity}">
				<li class="fieldcontain">
					<span id="clarity-label" class="property-label"><g:message code="diamond.clarity.label" default="Clarity" /></span>
					
						<span class="property-value" aria-labelledby="clarity-label"><g:fieldValue bean="${diamondInstance}" field="clarity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="diamond.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${diamondInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.cut}">
				<li class="fieldcontain">
					<span id="cut-label" class="property-label"><g:message code="diamond.cut.label" default="Cut" /></span>
					
						<span class="property-value" aria-labelledby="cut-label"><g:fieldValue bean="${diamondInstance}" field="cut"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.depth}">
				<li class="fieldcontain">
					<span id="depth-label" class="property-label"><g:message code="diamond.depth.label" default="Depth" /></span>
					
						<span class="property-value" aria-labelledby="depth-label"><g:fieldValue bean="${diamondInstance}" field="depth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.detailImage}">
				<li class="fieldcontain">
					<span id="detailImage-label" class="property-label"><g:message code="diamond.detailImage.label" default="Detail Image" /></span>
					
						<span class="property-value" aria-labelledby="detailImage-label"><g:link controller="image" action="show" id="${diamondInstance?.detailImage?.id}">${diamondInstance?.detailImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.fluorescence}">
				<li class="fieldcontain">
					<span id="fluorescence-label" class="property-label"><g:message code="diamond.fluorescence.label" default="Fluorescence" /></span>
					
						<span class="property-value" aria-labelledby="fluorescence-label"><g:fieldValue bean="${diamondInstance}" field="fluorescence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="diamond.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${diamondInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.largeImage}">
				<li class="fieldcontain">
					<span id="largeImage-label" class="property-label"><g:message code="diamond.largeImage.label" default="Large Image" /></span>
					
						<span class="property-value" aria-labelledby="largeImage-label"><g:link controller="image" action="show" id="${diamondInstance?.largeImage?.id}">${diamondInstance?.largeImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.lengthToWidth}">
				<li class="fieldcontain">
					<span id="lengthToWidth-label" class="property-label"><g:message code="diamond.lengthToWidth.label" default="Length To Width" /></span>
					
						<span class="property-value" aria-labelledby="lengthToWidth-label"><g:fieldValue bean="${diamondInstance}" field="lengthToWidth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.mediumImage}">
				<li class="fieldcontain">
					<span id="mediumImage-label" class="property-label"><g:message code="diamond.mediumImage.label" default="Medium Image" /></span>
					
						<span class="property-value" aria-labelledby="mediumImage-label"><g:link controller="image" action="show" id="${diamondInstance?.mediumImage?.id}">${diamondInstance?.mediumImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdAmountUomType}">
				<li class="fieldcontain">
					<span id="pdAmountUomType-label" class="property-label"><g:message code="diamond.pdAmountUomType.label" default="Pd Amount Uom Type" /></span>
					
						<span class="property-value" aria-labelledby="pdAmountUomType-label"><g:fieldValue bean="${diamondInstance}" field="pdAmountUomType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdComments}">
				<li class="fieldcontain">
					<span id="pdComments-label" class="property-label"><g:message code="diamond.pdComments.label" default="Pd Comments" /></span>
					
						<span class="property-value" aria-labelledby="pdComments-label"><g:fieldValue bean="${diamondInstance}" field="pdComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdCreatedDate}">
				<li class="fieldcontain">
					<span id="pdCreatedDate-label" class="property-label"><g:message code="diamond.pdCreatedDate.label" default="Pd Created Date" /></span>
					
						<span class="property-value" aria-labelledby="pdCreatedDate-label"><g:formatDate date="${diamondInstance?.pdCreatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdDescription}">
				<li class="fieldcontain">
					<span id="pdDescription-label" class="property-label"><g:message code="diamond.pdDescription.label" default="Pd Description" /></span>
					
						<span class="property-value" aria-labelledby="pdDescription-label"><g:fieldValue bean="${diamondInstance}" field="pdDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdFixedAmount}">
				<li class="fieldcontain">
					<span id="pdFixedAmount-label" class="property-label"><g:message code="diamond.pdFixedAmount.label" default="Pd Fixed Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdFixedAmount-label"><g:fieldValue bean="${diamondInstance}" field="pdFixedAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdInternalName}">
				<li class="fieldcontain">
					<span id="pdInternalName-label" class="property-label"><g:message code="diamond.pdInternalName.label" default="Pd Internal Name" /></span>
					
						<span class="property-value" aria-labelledby="pdInternalName-label"><g:fieldValue bean="${diamondInstance}" field="pdInternalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdIntroductionDate}">
				<li class="fieldcontain">
					<span id="pdIntroductionDate-label" class="property-label"><g:message code="diamond.pdIntroductionDate.label" default="Pd Introduction Date" /></span>
					
						<span class="property-value" aria-labelledby="pdIntroductionDate-label"><g:formatDate date="${diamondInstance?.pdIntroductionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdIsVirtual}">
				<li class="fieldcontain">
					<span id="pdIsVirtual-label" class="property-label"><g:message code="diamond.pdIsVirtual.label" default="Pd Is Virtual" /></span>
					
						<span class="property-value" aria-labelledby="pdIsVirtual-label"><g:formatBoolean boolean="${diamondInstance?.pdIsVirtual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdPiecesIncluded}">
				<li class="fieldcontain">
					<span id="pdPiecesIncluded-label" class="property-label"><g:message code="diamond.pdPiecesIncluded.label" default="Pd Pieces Included" /></span>
					
						<span class="property-value" aria-labelledby="pdPiecesIncluded-label"><g:fieldValue bean="${diamondInstance}" field="pdPiecesIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdProductCategory}">
				<li class="fieldcontain">
					<span id="pdProductCategory-label" class="property-label"><g:message code="diamond.pdProductCategory.label" default="Pd Product Category" /></span>
					
						<span class="property-value" aria-labelledby="pdProductCategory-label"><g:fieldValue bean="${diamondInstance}" field="pdProductCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdProductName}">
				<li class="fieldcontain">
					<span id="pdProductName-label" class="property-label"><g:message code="diamond.pdProductName.label" default="Pd Product Name" /></span>
					
						<span class="property-value" aria-labelledby="pdProductName-label"><g:fieldValue bean="${diamondInstance}" field="pdProductName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdQuantityIncluded}">
				<li class="fieldcontain">
					<span id="pdQuantityIncluded-label" class="property-label"><g:message code="diamond.pdQuantityIncluded.label" default="Pd Quantity Included" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityIncluded-label"><g:fieldValue bean="${diamondInstance}" field="pdQuantityIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdQuantityUom}">
				<li class="fieldcontain">
					<span id="pdQuantityUom-label" class="property-label"><g:message code="diamond.pdQuantityUom.label" default="Pd Quantity Uom" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityUom-label"><g:fieldValue bean="${diamondInstance}" field="pdQuantityUom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdRequireAmount}">
				<li class="fieldcontain">
					<span id="pdRequireAmount-label" class="property-label"><g:message code="diamond.pdRequireAmount.label" default="Pd Require Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireAmount-label"><g:formatBoolean boolean="${diamondInstance?.pdRequireAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdRequireInventory}">
				<li class="fieldcontain">
					<span id="pdRequireInventory-label" class="property-label"><g:message code="diamond.pdRequireInventory.label" default="Pd Require Inventory" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireInventory-label"><g:formatBoolean boolean="${diamondInstance?.pdRequireInventory}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdReturnable}">
				<li class="fieldcontain">
					<span id="pdReturnable-label" class="property-label"><g:message code="diamond.pdReturnable.label" default="Pd Returnable" /></span>
					
						<span class="property-value" aria-labelledby="pdReturnable-label"><g:formatBoolean boolean="${diamondInstance?.pdReturnable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdSalesDiscWhenNotAvail}">
				<li class="fieldcontain">
					<span id="pdSalesDiscWhenNotAvail-label" class="property-label"><g:message code="diamond.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscWhenNotAvail-label"><g:formatBoolean boolean="${diamondInstance?.pdSalesDiscWhenNotAvail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdSalesDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSalesDiscontinuationDate-label" class="property-label"><g:message code="diamond.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscontinuationDate-label"><g:formatDate date="${diamondInstance?.pdSalesDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdSupportDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSupportDiscontinuationDate-label" class="property-label"><g:message code="diamond.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSupportDiscontinuationDate-label"><g:formatDate date="${diamondInstance?.pdSupportDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdTaxable}">
				<li class="fieldcontain">
					<span id="pdTaxable-label" class="property-label"><g:message code="diamond.pdTaxable.label" default="Pd Taxable" /></span>
					
						<span class="property-value" aria-labelledby="pdTaxable-label"><g:formatBoolean boolean="${diamondInstance?.pdTaxable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdWeight}">
				<li class="fieldcontain">
					<span id="pdWeight-label" class="property-label"><g:message code="diamond.pdWeight.label" default="Pd Weight" /></span>
					
						<span class="property-value" aria-labelledby="pdWeight-label"><g:fieldValue bean="${diamondInstance}" field="pdWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.pdWeightUomId}">
				<li class="fieldcontain">
					<span id="pdWeightUomId-label" class="property-label"><g:message code="diamond.pdWeightUomId.label" default="Pd Weight Uom Id" /></span>
					
						<span class="property-value" aria-labelledby="pdWeightUomId-label"><g:fieldValue bean="${diamondInstance}" field="pdWeightUomId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.prodProductPrices}">
				<li class="fieldcontain">
					<span id="prodProductPrices-label" class="property-label"><g:message code="diamond.prodProductPrices.label" default="Prod Product Prices" /></span>
					
						<g:each in="${diamondInstance.prodProductPrices}" var="p">
						<span class="property-value" aria-labelledby="prodProductPrices-label"><g:link controller="prodProductPrice" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.productAttributes}">
				<li class="fieldcontain">
					<span id="productAttributes-label" class="property-label"><g:message code="diamond.productAttributes.label" default="Product Attributes" /></span>
					
						<g:each in="${diamondInstance.productAttributes}" var="p">
						<span class="property-value" aria-labelledby="productAttributes-label"><g:link controller="productAttribute" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.productCategory}">
				<li class="fieldcontain">
					<span id="productCategory-label" class="property-label"><g:message code="diamond.productCategory.label" default="Product Category" /></span>
					
						<span class="property-value" aria-labelledby="productCategory-label"><g:link controller="productCategory" action="show" id="${diamondInstance?.productCategory?.id}">${diamondInstance?.productCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.productReviews}">
				<li class="fieldcontain">
					<span id="productReviews-label" class="property-label"><g:message code="diamond.productReviews.label" default="Product Reviews" /></span>
					
						<g:each in="${diamondInstance.productReviews}" var="p">
						<span class="property-value" aria-labelledby="productReviews-label"><g:link controller="productReview" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.productType}">
				<li class="fieldcontain">
					<span id="productType-label" class="property-label"><g:message code="diamond.productType.label" default="Product Type" /></span>
					
						<span class="property-value" aria-labelledby="productType-label"><g:link controller="productType" action="show" id="${diamondInstance?.productType?.id}">${diamondInstance?.productType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.report}">
				<li class="fieldcontain">
					<span id="report-label" class="property-label"><g:message code="diamond.report.label" default="Report" /></span>
					
						<span class="property-value" aria-labelledby="report-label"><g:fieldValue bean="${diamondInstance}" field="report"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.shape}">
				<li class="fieldcontain">
					<span id="shape-label" class="property-label"><g:message code="diamond.shape.label" default="Shape" /></span>
					
						<span class="property-value" aria-labelledby="shape-label"><g:fieldValue bean="${diamondInstance}" field="shape"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.smallImage}">
				<li class="fieldcontain">
					<span id="smallImage-label" class="property-label"><g:message code="diamond.smallImage.label" default="Small Image" /></span>
					
						<span class="property-value" aria-labelledby="smallImage-label"><g:link controller="image" action="show" id="${diamondInstance?.smallImage?.id}">${diamondInstance?.smallImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.symmetry}">
				<li class="fieldcontain">
					<span id="symmetry-label" class="property-label"><g:message code="diamond.symmetry.label" default="Symmetry" /></span>
					
						<span class="property-value" aria-labelledby="symmetry-label"><g:fieldValue bean="${diamondInstance}" field="symmetry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${diamondInstance?.table}">
				<li class="fieldcontain">
					<span id="table-label" class="property-label"><g:message code="diamond.table.label" default="Table" /></span>
					
						<span class="property-value" aria-labelledby="table-label"><g:fieldValue bean="${diamondInstance}" field="table"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${diamondInstance?.id}" />
					<g:link class="edit" action="edit" id="${diamondInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
