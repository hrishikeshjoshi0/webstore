
<%@ page import="com.order.OrderHeader" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderHeader.label', default: 'OrderHeader')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orderHeader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orderHeader" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="orderNumber" title="${message(code: 'orderHeader.orderNumber.label', default: 'Order Number')}" />
					
						<g:sortableColumn property="orderDate" title="${message(code: 'orderHeader.orderDate.label', default: 'Order Date')}" />
					
						<g:sortableColumn property="totalAmount" title="${message(code: 'orderHeader.totalAmount.label', default: 'Total Amount')}" />
					
						<g:sortableColumn property="totaldiscount" title="${message(code: 'orderHeader.totaldiscount.label', default: 'Totaldiscount')}" />
					
						<g:sortableColumn property="shoppingCartId" title="${message(code: 'orderHeader.shoppingCartId.label', default: 'Shopping Cart Id')}" />
					
						<g:sortableColumn property="currency" title="${message(code: 'orderHeader.currency.label', default: 'Currency')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderHeaderInstanceList}" status="i" var="orderHeaderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderHeaderInstance.id}">${fieldValue(bean: orderHeaderInstance, field: "orderNumber")}</g:link></td>
					
						<td><g:formatDate date="${orderHeaderInstance.orderDate}" /></td>
					
						<td>${fieldValue(bean: orderHeaderInstance, field: "totalAmount")}</td>
					
						<td>${fieldValue(bean: orderHeaderInstance, field: "totaldiscount")}</td>
					
						<td>${fieldValue(bean: orderHeaderInstance, field: "shoppingCartId")}</td>
					
						<td>${fieldValue(bean: orderHeaderInstance, field: "currency")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderHeaderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
