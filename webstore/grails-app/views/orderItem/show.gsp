
<%@ page import="com.order.OrderItem" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderItem.label', default: 'OrderItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orderItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orderItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orderItem">
			
				<g:if test="${orderItemInstance?.itemId}">
				<li class="fieldcontain">
					<span id="itemId-label" class="property-label"><g:message code="orderItem.itemId.label" default="Item Id" /></span>
					
						<span class="property-value" aria-labelledby="itemId-label"><g:fieldValue bean="${orderItemInstance}" field="itemId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderItemInstance?.line}">
				<li class="fieldcontain">
					<span id="line-label" class="property-label"><g:message code="orderItem.line.label" default="Line" /></span>
					
						<span class="property-value" aria-labelledby="line-label"><g:fieldValue bean="${orderItemInstance}" field="line"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderItemInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="orderItem.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${orderItemInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderItemInstance?.productId}">
				<li class="fieldcontain">
					<span id="productId-label" class="property-label"><g:message code="orderItem.productId.label" default="Product Id" /></span>
					
						<span class="property-value" aria-labelledby="productId-label"><g:fieldValue bean="${orderItemInstance}" field="productId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderItemInstance?.unitPrice}">
				<li class="fieldcontain">
					<span id="unitPrice-label" class="property-label"><g:message code="orderItem.unitPrice.label" default="Unit Price" /></span>
					
						<span class="property-value" aria-labelledby="unitPrice-label"><g:fieldValue bean="${orderItemInstance}" field="unitPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderItemInstance?.lineTotalPrice}">
				<li class="fieldcontain">
					<span id="lineTotalPrice-label" class="property-label"><g:message code="orderItem.lineTotalPrice.label" default="Line Total Price" /></span>
					
						<span class="property-value" aria-labelledby="lineTotalPrice-label"><g:fieldValue bean="${orderItemInstance}" field="lineTotalPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderItemInstance?.orderHeader}">
				<li class="fieldcontain">
					<span id="orderHeader-label" class="property-label"><g:message code="orderItem.orderHeader.label" default="Order Header" /></span>
					
						<span class="property-value" aria-labelledby="orderHeader-label"><g:link controller="orderHeader" action="show" id="${orderItemInstance?.orderHeader?.id}">${orderItemInstance?.orderHeader?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${orderItemInstance?.id}" />
					<g:link class="edit" action="edit" id="${orderItemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
