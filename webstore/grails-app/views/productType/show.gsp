
<%@ page import="com.openappengine.model.product.ProductType"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'productType.label', default: 'ProductType')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div id="show-productType" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list productType">
			<g:if test="${productTypeInstance?.productTypeName}">
				<li class="fieldcontain"><span id="productTypeName-label"
					class="property-label"><g:message
							code="productType.productTypeName.label"
							default="Product Type Name" /></span> <span class="property-value"
					aria-labelledby="productTypeName-label"><g:fieldValue
							bean="${productTypeInstance}" field="productTypeName" /></span></li>
			</g:if>

			<g:if test="${productTypeInstance?.fromDate}">
				<li class="fieldcontain"><span id="fromDate-label"
					class="property-label"><g:message
							code="productType.fromDate.label" default="From Date" /></span> <span
					class="property-value" aria-labelledby="fromDate-label">
					<g:formatDate format="dd.MM.yyyy" date="${productTypeInstance?.fromDate}"/>
					</span>
			</g:if>

			<g:if test="${productTypeInstance?.toDate}">
				<li class="fieldcontain"><span id="toDate-label"
					class="property-label"><g:message
							code="productType.toDate.label" default="To Date" /></span> <span
					class="property-value" aria-labelledby="toDate-label">
					<g:formatDate format="dd.MM.yyyy" date="${productTypeInstance?.toDate}"/>
					</span></li>
			</g:if>

			<g:if test="${productTypeInstance?.productTypeDescription}">
				<li class="fieldcontain"><span
					id="productTypeDescription-label" class="property-label"><g:message
							code="productType.productTypeDescription.label"
							default="Product Type Description" /></span> <span
					class="property-value"
					aria-labelledby="productTypeDescription-label"><g:fieldValue
							bean="${productTypeInstance}" field="productTypeDescription" /></span></li>
			</g:if>
		</ol>
		
		<!-- TODO : Show products  -->
	</div>
</body>
</html>
