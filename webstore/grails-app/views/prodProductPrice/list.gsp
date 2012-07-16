
<%@ page import="com.openappengine.product.ProdProductPrice" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodProductPrice.label', default: 'ProdProductPrice')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prodProductPrice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prodProductPrice" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="ppCurrencyUomId" title="${message(code: 'prodProductPrice.ppCurrencyUomId.label', default: 'Pp Currency Uom Id')}" />
					
						<g:sortableColumn property="ppFromDate" title="${message(code: 'prodProductPrice.ppFromDate.label', default: 'Pp From Date')}" />
					
						<g:sortableColumn property="ppPrice" title="${message(code: 'prodProductPrice.ppPrice.label', default: 'Pp Price')}" />
					
						<g:sortableColumn property="ppToDate" title="${message(code: 'prodProductPrice.ppToDate.label', default: 'Pp To Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prodProductPriceInstanceList}" status="i" var="prodProductPriceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prodProductPriceInstance.id}">${fieldValue(bean: prodProductPriceInstance, field: "ppCurrencyUomId")}</g:link></td>
					
						<td><g:formatDate date="${prodProductPriceInstance.ppFromDate}" /></td>
					
						<td>${fieldValue(bean: prodProductPriceInstance, field: "ppPrice")}</td>
					
						<td><g:formatDate date="${prodProductPriceInstance.ppToDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prodProductPriceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
