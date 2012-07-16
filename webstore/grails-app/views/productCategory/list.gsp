
<%@ page import="com.openappengine.model.product.ProductCategory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productCategory.label', default: 'ProductCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-productCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table style="width: 100%;">
				<thead>
					<tr>
						<g:sortableColumn property="productCategoryId" title="${message(code: 'productCategory.productCategoryId.label', default: 'Product Category Id')}" />
					
						<g:sortableColumn property="productCategoryName" title="${message(code: 'productCategory.productCategoryName.label', default: 'Product Category Name')}" />
						
						<g:sortableColumn property="fromDate" title="${message(code: 'productCategory.fromDate.label', default: 'From Date')}" />
						
						<g:sortableColumn property="toDate" title="${message(code: 'productCategory.toDate.label', default: 'To Date')}" />
					
						<th><g:message code="productCategory.parentCategory.label" default="Parent Category" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productCategoryInstanceList}" status="i" var="productCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${productCategoryInstance.productCategoryId}">${fieldValue(bean: productCategoryInstance, field: "productCategoryId")}</g:link></td>
						<td>${fieldValue(bean: productCategoryInstance, field: "productCategoryName")}</td>
						<td><g:formatDate format="dd.MM.yyyy" date="${productCategoryInstance.fromDate}" /></td>
						<td><g:formatDate format="dd.MM.yyyy" date="${productCategoryInstance.toDate}" /></td>
						<td>${productCategoryInstance?.parentCategory?.productCategoryName}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productCategoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
