
<%@ page import="com.openappengine.model.product.ProductCategory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productCategory.label', default: 'ProductCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-productCategory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productCategory">
				<g:if test="${productCategoryInstance?.productCategoryName}">
				<li class="fieldcontain">
					<span id="productCategoryName-label" class="property-label"><g:message code="productCategory.productCategoryName.label" default="Product Category Name" /></span>
					
						<span class="property-value" aria-labelledby="productCategoryName-label"><g:fieldValue bean="${productCategoryInstance}" field="productCategoryName"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${productCategoryInstance?.fromDate}">
				<li class="fieldcontain">
					<span id="fromDate-label" class="property-label"><g:message code="productCategory.fromDate.label" default="From Date" /></span>
					
						<span class="property-value" aria-labelledby="fromDate-label"><g:formatDate date="${productCategoryInstance?.fromDate}" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${productCategoryInstance?.toDate}">
				<li class="fieldcontain">
					<span id="toDate-label" class="property-label"><g:message code="productCategory.toDate.label" default="To Date" /></span>
					
						<span class="property-value" aria-labelledby="toDate-label"><g:formatDate date="${productCategoryInstance?.toDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productCategoryInstance?.parentCategory}">
				<li class="fieldcontain">
					<span id="parentCategory-label" class="property-label"><g:message code="productCategory.parentCategory.label" default="Parent Category" /></span>
					
						<span class="property-value" aria-labelledby="parentCategory-label">
						<g:link controller="productCategory" action="show" id="${productCategoryInstance?.parentCategory?.parentCategoryId}">${productCategoryInstance?.parentCategory?.productCategoryName}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productCategoryInstance?.productCategoryDescription}">
				<li class="fieldcontain">
					<span id="productCategoryDescription-label" class="property-label"><g:message code="productCategory.productCategoryDescription.label" default="Product Category Description" /></span>
					
						<span class="property-value" aria-labelledby="productCategoryDescription-label"><g:fieldValue bean="${productCategoryInstance}" field="productCategoryDescription"/></span>
					
				</li>
				</g:if>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productCategoryInstance?.productCategoryId}" />
					<g:link class="edit" action="edit" id="${productCategoryInstance?.productCategoryId}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
