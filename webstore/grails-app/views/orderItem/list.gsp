
<%@ page import="com.order.OrderItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderItem.label', default: 'OrderItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orderItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orderItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="itemId" title="${message(code: 'orderItem.itemId.label', default: 'Item Id')}" />
					
						<g:sortableColumn property="line" title="${message(code: 'orderItem.line.label', default: 'Line')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'orderItem.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="productId" title="${message(code: 'orderItem.productId.label', default: 'Product Id')}" />
					
						<g:sortableColumn property="unitPrice" title="${message(code: 'orderItem.unitPrice.label', default: 'Unit Price')}" />
					
						<g:sortableColumn property="lineTotalPrice" title="${message(code: 'orderItem.lineTotalPrice.label', default: 'Line Total Price')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderItemInstanceList}" status="i" var="orderItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderItemInstance.id}">${fieldValue(bean: orderItemInstance, field: "itemId")}</g:link></td>
					
						<td>${fieldValue(bean: orderItemInstance, field: "line")}</td>
					
						<td>${fieldValue(bean: orderItemInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: orderItemInstance, field: "productId")}</td>
					
						<td>${fieldValue(bean: orderItemInstance, field: "unitPrice")}</td>
					
						<td>${fieldValue(bean: orderItemInstance, field: "lineTotalPrice")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderItemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
