
<%@ page import="com.openappengine.model.product.ProductTypeAttribute" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productTypeAttribute.label', default: 'ProductTypeAttribute')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-productTypeAttribute" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productTypeAttribute">
			
				<g:if test="${productTypeAttributeInstance?.productTypeAttributeId}">
				<li class="fieldcontain">
					<span id="productTypeAttributeId-label" class="property-label"><g:message code="productTypeAttribute.productTypeAttributeId.label" default="Product Type Attribute Id" /></span>
					
						<span class="property-value" aria-labelledby="productTypeAttributeId-label"><g:fieldValue bean="${productTypeAttributeInstance}" field="productTypeAttributeId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productTypeAttributeInstance?.fromDate}">
				<li class="fieldcontain">
					<span id="fromDate-label" class="property-label"><g:message code="productTypeAttribute.fromDate.label" default="From Date" /></span>
					
						<span class="property-value" aria-labelledby="fromDate-label"><g:formatDate date="${productTypeAttributeInstance?.fromDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productTypeAttributeInstance?.productType}">
				<li class="fieldcontain">
					<span id="productType-label" class="property-label"><g:message code="productTypeAttribute.productType.label" default="Product Type" /></span>
					
						<span class="property-value" aria-labelledby="productType-label"><g:link controller="productType" action="show" id="${productTypeAttributeInstance?.productType?.productTypeId}">${productTypeAttributeInstance?.productType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productTypeAttributeInstance?.productTypeAttributeName}">
				<li class="fieldcontain">
					<span id="productTypeAttributeName-label" class="property-label"><g:message code="productTypeAttribute.productTypeAttributeName.label" default="Product Type Attribute Name" /></span>
					
						<span class="property-value" aria-labelledby="productTypeAttributeName-label"><g:fieldValue bean="${productTypeAttributeInstance}" field="productTypeAttributeName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productTypeAttributeInstance?.productTypeAttributeType}">
				<li class="fieldcontain">
					<span id="productTypeAttributeType-label" class="property-label"><g:message code="productTypeAttribute.productTypeAttributeType.label" default="Product Type Attribute Type" /></span>
					
						<span class="property-value" aria-labelledby="productTypeAttributeType-label"><g:fieldValue bean="${productTypeAttributeInstance}" field="productTypeAttributeType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productTypeAttributeInstance?.toDate}">
				<li class="fieldcontain">
					<span id="toDate-label" class="property-label"><g:message code="productTypeAttribute.toDate.label" default="To Date" /></span>
					
						<span class="property-value" aria-labelledby="toDate-label"><g:formatDate date="${productTypeAttributeInstance?.toDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productTypeAttributeInstance?.productTypeAttributeId}" />
					<g:link class="edit" action="edit" id="${productTypeAttributeInstance?.productTypeAttributeId}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
