
<%@ page import="com.order.OrderHeader" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orderHeader.label', default: 'OrderHeader')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orderHeader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orderHeader" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orderHeader">
			
				<g:if test="${orderHeaderInstance?.orderNumber}">
				<li class="fieldcontain">
					<span id="orderNumber-label" class="property-label"><g:message code="orderHeader.orderNumber.label" default="Order Number" /></span>
					
						<span class="property-value" aria-labelledby="orderNumber-label"><g:fieldValue bean="${orderHeaderInstance}" field="orderNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.orderDate}">
				<li class="fieldcontain">
					<span id="orderDate-label" class="property-label"><g:message code="orderHeader.orderDate.label" default="Order Date" /></span>
					
						<span class="property-value" aria-labelledby="orderDate-label"><g:formatDate date="${orderHeaderInstance?.orderDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.totalAmount}">
				<li class="fieldcontain">
					<span id="totalAmount-label" class="property-label"><g:message code="orderHeader.totalAmount.label" default="Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="totalAmount-label"><g:fieldValue bean="${orderHeaderInstance}" field="totalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.totaldiscount}">
				<li class="fieldcontain">
					<span id="totaldiscount-label" class="property-label"><g:message code="orderHeader.totaldiscount.label" default="Totaldiscount" /></span>
					
						<span class="property-value" aria-labelledby="totaldiscount-label"><g:fieldValue bean="${orderHeaderInstance}" field="totaldiscount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.shoppingCartId}">
				<li class="fieldcontain">
					<span id="shoppingCartId-label" class="property-label"><g:message code="orderHeader.shoppingCartId.label" default="Shopping Cart Id" /></span>
					
						<span class="property-value" aria-labelledby="shoppingCartId-label"><g:fieldValue bean="${orderHeaderInstance}" field="shoppingCartId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.currency}">
				<li class="fieldcontain">
					<span id="currency-label" class="property-label"><g:message code="orderHeader.currency.label" default="Currency" /></span>
					
						<span class="property-value" aria-labelledby="currency-label"><g:fieldValue bean="${orderHeaderInstance}" field="currency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="orderHeader.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${orderHeaderInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.transactionId}">
				<li class="fieldcontain">
					<span id="transactionId-label" class="property-label"><g:message code="orderHeader.transactionId.label" default="Transaction Id" /></span>
					
						<span class="property-value" aria-labelledby="transactionId-label"><g:fieldValue bean="${orderHeaderInstance}" field="transactionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.paypalTransactionId}">
				<li class="fieldcontain">
					<span id="paypalTransactionId-label" class="property-label"><g:message code="orderHeader.paypalTransactionId.label" default="Paypal Transaction Id" /></span>
					
						<span class="property-value" aria-labelledby="paypalTransactionId-label"><g:fieldValue bean="${orderHeaderInstance}" field="paypalTransactionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.addressId}">
				<li class="fieldcontain">
					<span id="addressId-label" class="property-label"><g:message code="orderHeader.addressId.label" default="Address Id" /></span>
					
						<span class="property-value" aria-labelledby="addressId-label"><g:fieldValue bean="${orderHeaderInstance}" field="addressId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="orderHeader.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${orderHeaderInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="orderHeader.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${orderHeaderInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="orderHeader.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${orderHeaderInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="orderHeader.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${orderHeaderInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="orderHeader.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${orderHeaderInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.landmark}">
				<li class="fieldcontain">
					<span id="landmark-label" class="property-label"><g:message code="orderHeader.landmark.label" default="Landmark" /></span>
					
						<span class="property-value" aria-labelledby="landmark-label"><g:fieldValue bean="${orderHeaderInstance}" field="landmark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="orderHeader.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${orderHeaderInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="orderHeader.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${orderHeaderInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="orderHeader.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${orderHeaderInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="orderHeader.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${orderHeaderInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.primaryPhone}">
				<li class="fieldcontain">
					<span id="primaryPhone-label" class="property-label"><g:message code="orderHeader.primaryPhone.label" default="Primary Phone" /></span>
					
						<span class="property-value" aria-labelledby="primaryPhone-label"><g:fieldValue bean="${orderHeaderInstance}" field="primaryPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="orderHeader.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${orderHeaderInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="orderHeader.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${orderHeaderInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="orderHeader.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${orderHeaderInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderHeaderInstance?.orderItem}">
				<li class="fieldcontain">
					<span id="orderItem-label" class="property-label"><g:message code="orderHeader.orderItem.label" default="Order Item" /></span>
					
						<g:each in="${orderHeaderInstance.orderItem}" var="o">
						<span class="property-value" aria-labelledby="orderItem-label"><g:link controller="orderItem" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${orderHeaderInstance?.id}" />
					<g:link class="edit" action="edit" id="${orderHeaderInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
