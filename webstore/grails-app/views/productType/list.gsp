
<%@ page import="com.openappengine.model.product.ProductType" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productType.label', default: 'ProductType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-productType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table style="width:100%;">
				<thead>
					<tr>
						<g:sortableColumn property="productTypeId" title="${message(code: 'productType.productTypeId.label', default: 'Product Type Id')}" />
						<g:sortableColumn property="productTypeName" title="${message(code: 'productType.productTypeName.label', default: 'Product Type Name')}" />
						<g:sortableColumn property="fromDate" title="${message(code: 'productType.fromDate.label', default: 'From Date')}" />
						<g:sortableColumn property="toDate" title="${message(code: 'productType.toDate.label', default: 'To Date')}" />
						<th><g:message code="productType.parentType.label" default="Parent Type" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${productTypeInstanceList}" status="i" var="productTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${productTypeInstance.productTypeId}">${fieldValue(bean: productTypeInstance, field: "productTypeId")}</g:link></td>
						<td>${productTypeInstance.productTypeName}</td>
						<td><g:formatDate format="dd.MM.yyyy" date="${productTypeInstance.fromDate}" /></td>
						<td><g:formatDate format="dd.MM.yyyy" date="${productTypeInstance.toDate}" /></td>
						<td>${productTypeInstance?.parentType?.productTypeName}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
