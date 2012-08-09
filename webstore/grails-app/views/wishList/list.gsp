
<%@ page import="com.openappengine.model.wishlist.WishList" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wishList.label', default: 'WishList')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-wishList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-wishList" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="wishListId" title="${message(code: 'wishList.wishListId.label', default: 'Wish List Id')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'wishList.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'wishList.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="sessionID" title="${message(code: 'wishList.sessionID.label', default: 'Session ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${wishListInstanceList}" status="i" var="wishListInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${wishListInstance.id}">${fieldValue(bean: wishListInstance, field: "wishListId")}</g:link></td>
					
						<td><g:formatDate date="${wishListInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${wishListInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: wishListInstance, field: "sessionID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${wishListInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
