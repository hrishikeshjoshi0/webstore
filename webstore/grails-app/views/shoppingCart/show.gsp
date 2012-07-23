
<%@ page import="com.openappengine.model.cart.ShoppingCart" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shoppingCart" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shoppingCart" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shoppingCart">
			
				<g:if test="${shoppingCartInstance?.shoppingCartId}">
				<li class="fieldcontain">
					<span id="shoppingCartId-label" class="property-label"><g:message code="shoppingCart.shoppingCartId.label" default="Shopping Cart Id" /></span>
					
						<span class="property-value" aria-labelledby="shoppingCartId-label"><g:fieldValue bean="${shoppingCartInstance}" field="shoppingCartId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.cartItems}">
				<li class="fieldcontain">
					<span id="cartItems-label" class="property-label"><g:message code="shoppingCart.cartItems.label" default="Cart Items" /></span>
					
						<g:each in="${shoppingCartInstance.cartItems}" var="c">
						<span class="property-value" aria-labelledby="cartItems-label"><g:link controller="shoppingCartItem" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="shoppingCart.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${shoppingCartInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.lastURL}">
				<li class="fieldcontain">
					<span id="lastURL-label" class="property-label"><g:message code="shoppingCart.lastURL.label" default="Last URL" /></span>
					
						<span class="property-value" aria-labelledby="lastURL-label"><g:fieldValue bean="${shoppingCartInstance}" field="lastURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="shoppingCart.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${shoppingCartInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${shoppingCartInstance?.sessionID}">
				<li class="fieldcontain">
					<span id="sessionID-label" class="property-label"><g:message code="shoppingCart.sessionID.label" default="Session ID" /></span>
					
						<span class="property-value" aria-labelledby="sessionID-label"><g:fieldValue bean="${shoppingCartInstance}" field="sessionID"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${shoppingCartInstance?.id}" />
					<g:link class="edit" action="edit" id="${shoppingCartInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
