
<%@ page import="com.openappengine.model.wishlist.WishList" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'wishList.label', default: 'WishList')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-wishList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-wishList" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list wishList">
			
				<g:if test="${wishListInstance?.wishListId}">
				<li class="fieldcontain">
					<span id="wishListId-label" class="property-label"><g:message code="wishList.wishListId.label" default="Wish List Id" /></span>
					
						<span class="property-value" aria-labelledby="wishListId-label"><g:fieldValue bean="${wishListInstance}" field="wishListId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${wishListInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="wishList.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${wishListInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${wishListInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="wishList.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${wishListInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${wishListInstance?.sessionID}">
				<li class="fieldcontain">
					<span id="sessionID-label" class="property-label"><g:message code="wishList.sessionID.label" default="Session ID" /></span>
					
						<span class="property-value" aria-labelledby="sessionID-label"><g:fieldValue bean="${wishListInstance}" field="sessionID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${wishListInstance?.wishListItems}">
				<li class="fieldcontain">
					<span id="wishListItems-label" class="property-label"><g:message code="wishList.wishListItems.label" default="Wish List Items" /></span>
					
						<g:each in="${wishListInstance.wishListItems}" var="w">
						<span class="property-value" aria-labelledby="wishListItems-label"><g:link controller="wishListItem" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${wishListInstance?.id}" />
					<g:link class="edit" action="edit" id="${wishListInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
