<%@ page import="com.openappengine.model.product.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="pdAmountUomType" title="${message(code: 'product.pdAmountUomType.label', default: 'Pd Amount Uom Type')}" />
					
						<g:sortableColumn property="pdComments" title="${message(code: 'product.pdComments.label', default: 'Pd Comments')}" />
					
						<g:sortableColumn property="pdCreatedDate" title="${message(code: 'product.pdCreatedDate.label', default: 'Pd Created Date')}" />
					
						<g:sortableColumn property="pdDescription" title="${message(code: 'product.pdDescription.label', default: 'Pd Description')}" />
					
						<g:sortableColumn property="pdFixedAmount" title="${message(code: 'product.pdFixedAmount.label', default: 'Pd Fixed Amount')}" />
					
						<g:sortableColumn property="pdInternalName" title="${message(code: 'product.pdInternalName.label', default: 'Pd Internal Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "pdAmountUomType")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "pdComments")}</td>
					
						<td><g:formatDate date="${productInstance.pdCreatedDate}" /></td>
					
						<td>${fieldValue(bean: productInstance, field: "pdDescription")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "pdFixedAmount")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "pdInternalName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
