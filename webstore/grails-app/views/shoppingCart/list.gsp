
<%@ page import="com.openappengine.model.cart.ShoppingCart" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shoppingCart" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shoppingCart" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="shoppingCartId" title="${message(code: 'shoppingCart.shoppingCartId.label', default: 'Shopping Cart Id')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'shoppingCart.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastURL" title="${message(code: 'shoppingCart.lastURL.label', default: 'Last URL')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'shoppingCart.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="sessionID" title="${message(code: 'shoppingCart.sessionID.label', default: 'Session ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shoppingCartInstanceList}" status="i" var="shoppingCartInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shoppingCartInstance.id}">${fieldValue(bean: shoppingCartInstance, field: "shoppingCartId")}</g:link></td>
					
						<td><g:formatDate date="${shoppingCartInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "lastURL")}</td>
					
						<td><g:formatDate date="${shoppingCartInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: shoppingCartInstance, field: "sessionID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shoppingCartInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
