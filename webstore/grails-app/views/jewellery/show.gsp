
<%@ page import="com.openappengine.model.product.Jewellery" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jewellery.label', default: 'Jewellery')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jewellery" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jewellery" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jewellery">
			
				<g:if test="${jewelleryInstance?.pdProductId}">
				<li class="fieldcontain">
					<span id="pdProductId-label" class="property-label"><g:message code="jewellery.pdProductId.label" default="Pd Product Id" /></span>
					
						<span class="property-value" aria-labelledby="pdProductId-label"><g:fieldValue bean="${jewelleryInstance}" field="pdProductId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.calculatedInfo}">
				<li class="fieldcontain">
					<span id="calculatedInfo-label" class="property-label"><g:message code="jewellery.calculatedInfo.label" default="Calculated Info" /></span>
					
						<span class="property-value" aria-labelledby="calculatedInfo-label"><g:link controller="productCalculatedInfo" action="show" id="${jewelleryInstance?.calculatedInfo?.id}">${jewelleryInstance?.calculatedInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.cat1}">
				<li class="fieldcontain">
					<span id="cat1-label" class="property-label"><g:message code="jewellery.cat1.label" default="Cat1" /></span>
					
						<span class="property-value" aria-labelledby="cat1-label"><g:fieldValue bean="${jewelleryInstance}" field="cat1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.cat2}">
				<li class="fieldcontain">
					<span id="cat2-label" class="property-label"><g:message code="jewellery.cat2.label" default="Cat2" /></span>
					
						<span class="property-value" aria-labelledby="cat2-label"><g:fieldValue bean="${jewelleryInstance}" field="cat2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.cat3}">
				<li class="fieldcontain">
					<span id="cat3-label" class="property-label"><g:message code="jewellery.cat3.label" default="Cat3" /></span>
					
						<span class="property-value" aria-labelledby="cat3-label"><g:fieldValue bean="${jewelleryInstance}" field="cat3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.colorStoneName}">
				<li class="fieldcontain">
					<span id="colorStoneName-label" class="property-label"><g:message code="jewellery.colorStoneName.label" default="Color Stone Name" /></span>
					
						<span class="property-value" aria-labelledby="colorStoneName-label"><g:fieldValue bean="${jewelleryInstance}" field="colorStoneName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.colorStoneNoOfPieces}">
				<li class="fieldcontain">
					<span id="colorStoneNoOfPieces-label" class="property-label"><g:message code="jewellery.colorStoneNoOfPieces.label" default="Color Stone No Of Pieces" /></span>
					
						<span class="property-value" aria-labelledby="colorStoneNoOfPieces-label"><g:fieldValue bean="${jewelleryInstance}" field="colorStoneNoOfPieces"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.colorStoneShape}">
				<li class="fieldcontain">
					<span id="colorStoneShape-label" class="property-label"><g:message code="jewellery.colorStoneShape.label" default="Color Stone Shape" /></span>
					
						<span class="property-value" aria-labelledby="colorStoneShape-label"><g:fieldValue bean="${jewelleryInstance}" field="colorStoneShape"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.colorStoneWeight}">
				<li class="fieldcontain">
					<span id="colorStoneWeight-label" class="property-label"><g:message code="jewellery.colorStoneWeight.label" default="Color Stone Weight" /></span>
					
						<span class="property-value" aria-labelledby="colorStoneWeight-label"><g:fieldValue bean="${jewelleryInstance}" field="colorStoneWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.detailImage}">
				<li class="fieldcontain">
					<span id="detailImage-label" class="property-label"><g:message code="jewellery.detailImage.label" default="Detail Image" /></span>
					
						<span class="property-value" aria-labelledby="detailImage-label"><g:link controller="image" action="show" id="${jewelleryInstance?.detailImage?.id}">${jewelleryInstance?.detailImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.diamondClarity}">
				<li class="fieldcontain">
					<span id="diamondClarity-label" class="property-label"><g:message code="jewellery.diamondClarity.label" default="Diamond Clarity" /></span>
					
						<span class="property-value" aria-labelledby="diamondClarity-label"><g:fieldValue bean="${jewelleryInstance}" field="diamondClarity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.diamondColor}">
				<li class="fieldcontain">
					<span id="diamondColor-label" class="property-label"><g:message code="jewellery.diamondColor.label" default="Diamond Color" /></span>
					
						<span class="property-value" aria-labelledby="diamondColor-label"><g:fieldValue bean="${jewelleryInstance}" field="diamondColor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.diamondNoOfPieces}">
				<li class="fieldcontain">
					<span id="diamondNoOfPieces-label" class="property-label"><g:message code="jewellery.diamondNoOfPieces.label" default="Diamond No Of Pieces" /></span>
					
						<span class="property-value" aria-labelledby="diamondNoOfPieces-label"><g:fieldValue bean="${jewelleryInstance}" field="diamondNoOfPieces"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.diamondShape}">
				<li class="fieldcontain">
					<span id="diamondShape-label" class="property-label"><g:message code="jewellery.diamondShape.label" default="Diamond Shape" /></span>
					
						<span class="property-value" aria-labelledby="diamondShape-label"><g:fieldValue bean="${jewelleryInstance}" field="diamondShape"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.diamondWeight}">
				<li class="fieldcontain">
					<span id="diamondWeight-label" class="property-label"><g:message code="jewellery.diamondWeight.label" default="Diamond Weight" /></span>
					
						<span class="property-value" aria-labelledby="diamondWeight-label"><g:fieldValue bean="${jewelleryInstance}" field="diamondWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.grossWeight}">
				<li class="fieldcontain">
					<span id="grossWeight-label" class="property-label"><g:message code="jewellery.grossWeight.label" default="Gross Weight" /></span>
					
						<span class="property-value" aria-labelledby="grossWeight-label"><g:fieldValue bean="${jewelleryInstance}" field="grossWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="jewellery.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${jewelleryInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.largeImage}">
				<li class="fieldcontain">
					<span id="largeImage-label" class="property-label"><g:message code="jewellery.largeImage.label" default="Large Image" /></span>
					
						<span class="property-value" aria-labelledby="largeImage-label"><g:link controller="image" action="show" id="${jewelleryInstance?.largeImage?.id}">${jewelleryInstance?.largeImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.length}">
				<li class="fieldcontain">
					<span id="length-label" class="property-label"><g:message code="jewellery.length.label" default="Length" /></span>
					
						<span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${jewelleryInstance}" field="length"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.mediumImage}">
				<li class="fieldcontain">
					<span id="mediumImage-label" class="property-label"><g:message code="jewellery.mediumImage.label" default="Medium Image" /></span>
					
						<span class="property-value" aria-labelledby="mediumImage-label"><g:link controller="image" action="show" id="${jewelleryInstance?.mediumImage?.id}">${jewelleryInstance?.mediumImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.metal}">
				<li class="fieldcontain">
					<span id="metal-label" class="property-label"><g:message code="jewellery.metal.label" default="Metal" /></span>
					
						<span class="property-value" aria-labelledby="metal-label"><g:fieldValue bean="${jewelleryInstance}" field="metal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.netWeight}">
				<li class="fieldcontain">
					<span id="netWeight-label" class="property-label"><g:message code="jewellery.netWeight.label" default="Net Weight" /></span>
					
						<span class="property-value" aria-labelledby="netWeight-label"><g:fieldValue bean="${jewelleryInstance}" field="netWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdAmountUomType}">
				<li class="fieldcontain">
					<span id="pdAmountUomType-label" class="property-label"><g:message code="jewellery.pdAmountUomType.label" default="Pd Amount Uom Type" /></span>
					
						<span class="property-value" aria-labelledby="pdAmountUomType-label"><g:fieldValue bean="${jewelleryInstance}" field="pdAmountUomType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdComments}">
				<li class="fieldcontain">
					<span id="pdComments-label" class="property-label"><g:message code="jewellery.pdComments.label" default="Pd Comments" /></span>
					
						<span class="property-value" aria-labelledby="pdComments-label"><g:fieldValue bean="${jewelleryInstance}" field="pdComments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdCreatedDate}">
				<li class="fieldcontain">
					<span id="pdCreatedDate-label" class="property-label"><g:message code="jewellery.pdCreatedDate.label" default="Pd Created Date" /></span>
					
						<span class="property-value" aria-labelledby="pdCreatedDate-label"><g:formatDate date="${jewelleryInstance?.pdCreatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdDescription}">
				<li class="fieldcontain">
					<span id="pdDescription-label" class="property-label"><g:message code="jewellery.pdDescription.label" default="Pd Description" /></span>
					
						<span class="property-value" aria-labelledby="pdDescription-label"><g:fieldValue bean="${jewelleryInstance}" field="pdDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdFixedAmount}">
				<li class="fieldcontain">
					<span id="pdFixedAmount-label" class="property-label"><g:message code="jewellery.pdFixedAmount.label" default="Pd Fixed Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdFixedAmount-label"><g:fieldValue bean="${jewelleryInstance}" field="pdFixedAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdInternalName}">
				<li class="fieldcontain">
					<span id="pdInternalName-label" class="property-label"><g:message code="jewellery.pdInternalName.label" default="Pd Internal Name" /></span>
					
						<span class="property-value" aria-labelledby="pdInternalName-label"><g:fieldValue bean="${jewelleryInstance}" field="pdInternalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdIntroductionDate}">
				<li class="fieldcontain">
					<span id="pdIntroductionDate-label" class="property-label"><g:message code="jewellery.pdIntroductionDate.label" default="Pd Introduction Date" /></span>
					
						<span class="property-value" aria-labelledby="pdIntroductionDate-label"><g:formatDate date="${jewelleryInstance?.pdIntroductionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdIsVirtual}">
				<li class="fieldcontain">
					<span id="pdIsVirtual-label" class="property-label"><g:message code="jewellery.pdIsVirtual.label" default="Pd Is Virtual" /></span>
					
						<span class="property-value" aria-labelledby="pdIsVirtual-label"><g:formatBoolean boolean="${jewelleryInstance?.pdIsVirtual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdPiecesIncluded}">
				<li class="fieldcontain">
					<span id="pdPiecesIncluded-label" class="property-label"><g:message code="jewellery.pdPiecesIncluded.label" default="Pd Pieces Included" /></span>
					
						<span class="property-value" aria-labelledby="pdPiecesIncluded-label"><g:fieldValue bean="${jewelleryInstance}" field="pdPiecesIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdProductCategory}">
				<li class="fieldcontain">
					<span id="pdProductCategory-label" class="property-label"><g:message code="jewellery.pdProductCategory.label" default="Pd Product Category" /></span>
					
						<span class="property-value" aria-labelledby="pdProductCategory-label"><g:fieldValue bean="${jewelleryInstance}" field="pdProductCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdProductName}">
				<li class="fieldcontain">
					<span id="pdProductName-label" class="property-label"><g:message code="jewellery.pdProductName.label" default="Pd Product Name" /></span>
					
						<span class="property-value" aria-labelledby="pdProductName-label"><g:fieldValue bean="${jewelleryInstance}" field="pdProductName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdQuantityIncluded}">
				<li class="fieldcontain">
					<span id="pdQuantityIncluded-label" class="property-label"><g:message code="jewellery.pdQuantityIncluded.label" default="Pd Quantity Included" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityIncluded-label"><g:fieldValue bean="${jewelleryInstance}" field="pdQuantityIncluded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdQuantityUom}">
				<li class="fieldcontain">
					<span id="pdQuantityUom-label" class="property-label"><g:message code="jewellery.pdQuantityUom.label" default="Pd Quantity Uom" /></span>
					
						<span class="property-value" aria-labelledby="pdQuantityUom-label"><g:fieldValue bean="${jewelleryInstance}" field="pdQuantityUom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdRequireAmount}">
				<li class="fieldcontain">
					<span id="pdRequireAmount-label" class="property-label"><g:message code="jewellery.pdRequireAmount.label" default="Pd Require Amount" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireAmount-label"><g:formatBoolean boolean="${jewelleryInstance?.pdRequireAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdRequireInventory}">
				<li class="fieldcontain">
					<span id="pdRequireInventory-label" class="property-label"><g:message code="jewellery.pdRequireInventory.label" default="Pd Require Inventory" /></span>
					
						<span class="property-value" aria-labelledby="pdRequireInventory-label"><g:formatBoolean boolean="${jewelleryInstance?.pdRequireInventory}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdReturnable}">
				<li class="fieldcontain">
					<span id="pdReturnable-label" class="property-label"><g:message code="jewellery.pdReturnable.label" default="Pd Returnable" /></span>
					
						<span class="property-value" aria-labelledby="pdReturnable-label"><g:formatBoolean boolean="${jewelleryInstance?.pdReturnable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdSalesDiscWhenNotAvail}">
				<li class="fieldcontain">
					<span id="pdSalesDiscWhenNotAvail-label" class="property-label"><g:message code="jewellery.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscWhenNotAvail-label"><g:formatBoolean boolean="${jewelleryInstance?.pdSalesDiscWhenNotAvail}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdSalesDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSalesDiscontinuationDate-label" class="property-label"><g:message code="jewellery.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSalesDiscontinuationDate-label"><g:formatDate date="${jewelleryInstance?.pdSalesDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdSupportDiscontinuationDate}">
				<li class="fieldcontain">
					<span id="pdSupportDiscontinuationDate-label" class="property-label"><g:message code="jewellery.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" /></span>
					
						<span class="property-value" aria-labelledby="pdSupportDiscontinuationDate-label"><g:formatDate date="${jewelleryInstance?.pdSupportDiscontinuationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdTaxable}">
				<li class="fieldcontain">
					<span id="pdTaxable-label" class="property-label"><g:message code="jewellery.pdTaxable.label" default="Pd Taxable" /></span>
					
						<span class="property-value" aria-labelledby="pdTaxable-label"><g:formatBoolean boolean="${jewelleryInstance?.pdTaxable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdWeight}">
				<li class="fieldcontain">
					<span id="pdWeight-label" class="property-label"><g:message code="jewellery.pdWeight.label" default="Pd Weight" /></span>
					
						<span class="property-value" aria-labelledby="pdWeight-label"><g:fieldValue bean="${jewelleryInstance}" field="pdWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pdWeightUomId}">
				<li class="fieldcontain">
					<span id="pdWeightUomId-label" class="property-label"><g:message code="jewellery.pdWeightUomId.label" default="Pd Weight Uom Id" /></span>
					
						<span class="property-value" aria-labelledby="pdWeightUomId-label"><g:fieldValue bean="${jewelleryInstance}" field="pdWeightUomId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pearlName}">
				<li class="fieldcontain">
					<span id="pearlName-label" class="property-label"><g:message code="jewellery.pearlName.label" default="Pearl Name" /></span>
					
						<span class="property-value" aria-labelledby="pearlName-label"><g:fieldValue bean="${jewelleryInstance}" field="pearlName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pearlNoOfPieces}">
				<li class="fieldcontain">
					<span id="pearlNoOfPieces-label" class="property-label"><g:message code="jewellery.pearlNoOfPieces.label" default="Pearl No Of Pieces" /></span>
					
						<span class="property-value" aria-labelledby="pearlNoOfPieces-label"><g:fieldValue bean="${jewelleryInstance}" field="pearlNoOfPieces"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pearlShape}">
				<li class="fieldcontain">
					<span id="pearlShape-label" class="property-label"><g:message code="jewellery.pearlShape.label" default="Pearl Shape" /></span>
					
						<span class="property-value" aria-labelledby="pearlShape-label"><g:fieldValue bean="${jewelleryInstance}" field="pearlShape"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.pearlWeight}">
				<li class="fieldcontain">
					<span id="pearlWeight-label" class="property-label"><g:message code="jewellery.pearlWeight.label" default="Pearl Weight" /></span>
					
						<span class="property-value" aria-labelledby="pearlWeight-label"><g:fieldValue bean="${jewelleryInstance}" field="pearlWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.prodProductPrices}">
				<li class="fieldcontain">
					<span id="prodProductPrices-label" class="property-label"><g:message code="jewellery.prodProductPrices.label" default="Prod Product Prices" /></span>
					
						<g:each in="${jewelleryInstance.prodProductPrices}" var="p">
						<span class="property-value" aria-labelledby="prodProductPrices-label"><g:link controller="prodProductPrice" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.productAttributes}">
				<li class="fieldcontain">
					<span id="productAttributes-label" class="property-label"><g:message code="jewellery.productAttributes.label" default="Product Attributes" /></span>
					
						<g:each in="${jewelleryInstance.productAttributes}" var="p">
						<span class="property-value" aria-labelledby="productAttributes-label"><g:link controller="productAttribute" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.productCategory}">
				<li class="fieldcontain">
					<span id="productCategory-label" class="property-label"><g:message code="jewellery.productCategory.label" default="Product Category" /></span>
					
						<span class="property-value" aria-labelledby="productCategory-label"><g:link controller="productCategory" action="show" id="${jewelleryInstance?.productCategory?.id}">${jewelleryInstance?.productCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.productReviews}">
				<li class="fieldcontain">
					<span id="productReviews-label" class="property-label"><g:message code="jewellery.productReviews.label" default="Product Reviews" /></span>
					
						<g:each in="${jewelleryInstance.productReviews}" var="p">
						<span class="property-value" aria-labelledby="productReviews-label"><g:link controller="productReview" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.productType}">
				<li class="fieldcontain">
					<span id="productType-label" class="property-label"><g:message code="jewellery.productType.label" default="Product Type" /></span>
					
						<span class="property-value" aria-labelledby="productType-label"><g:link controller="productType" action="show" id="${jewelleryInstance?.productType?.id}">${jewelleryInstance?.productType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.settingStyle}">
				<li class="fieldcontain">
					<span id="settingStyle-label" class="property-label"><g:message code="jewellery.settingStyle.label" default="Setting Style" /></span>
					
						<span class="property-value" aria-labelledby="settingStyle-label"><g:fieldValue bean="${jewelleryInstance}" field="settingStyle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.smallImage}">
				<li class="fieldcontain">
					<span id="smallImage-label" class="property-label"><g:message code="jewellery.smallImage.label" default="Small Image" /></span>
					
						<span class="property-value" aria-labelledby="smallImage-label"><g:link controller="image" action="show" id="${jewelleryInstance?.smallImage?.id}">${jewelleryInstance?.smallImage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.stockId}">
				<li class="fieldcontain">
					<span id="stockId-label" class="property-label"><g:message code="jewellery.stockId.label" default="Stock Id" /></span>
					
						<span class="property-value" aria-labelledby="stockId-label"><g:fieldValue bean="${jewelleryInstance}" field="stockId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jewelleryInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="jewellery.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${jewelleryInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${jewelleryInstance?.id}" />
					<g:link class="edit" action="edit" id="${jewelleryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
