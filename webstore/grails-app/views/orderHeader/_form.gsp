<%@ page import="com.order.OrderHeader" %>



<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'orderNumber', 'error')} ">
	<label for="orderNumber">
		<g:message code="orderHeader.orderNumber.label" default="Order Number" />
		
	</label>
	<g:textField name="orderNumber" value="${orderHeaderInstance?.orderNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'orderDate', 'error')} ">
	<label for="orderDate">
		<g:message code="orderHeader.orderDate.label" default="Order Date" />
		
	</label>
	<g:datePicker name="orderDate" precision="day"  value="${orderHeaderInstance?.orderDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'totalAmount', 'error')} ">
	<label for="totalAmount">
		<g:message code="orderHeader.totalAmount.label" default="Total Amount" />
		
	</label>
	<g:field name="totalAmount" value="${fieldValue(bean: orderHeaderInstance, field: 'totalAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'totaldiscount', 'error')} ">
	<label for="totaldiscount">
		<g:message code="orderHeader.totaldiscount.label" default="Totaldiscount" />
		
	</label>
	<g:field name="totaldiscount" value="${fieldValue(bean: orderHeaderInstance, field: 'totaldiscount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'shoppingCartId', 'error')} ">
	<label for="shoppingCartId">
		<g:message code="orderHeader.shoppingCartId.label" default="Shopping Cart Id" />
		
	</label>
	<g:field name="shoppingCartId" type="number" value="${orderHeaderInstance.shoppingCartId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'currency', 'error')} ">
	<label for="currency">
		<g:message code="orderHeader.currency.label" default="Currency" />
		
	</label>
	<g:currencySelect name="currency" value="${orderHeaderInstance?.currency}"  noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="orderHeader.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${orderHeaderInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'transactionId', 'error')} ">
	<label for="transactionId">
		<g:message code="orderHeader.transactionId.label" default="Transaction Id" />
		
	</label>
	<g:textField name="transactionId" value="${orderHeaderInstance?.transactionId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'paypalTransactionId', 'error')} ">
	<label for="paypalTransactionId">
		<g:message code="orderHeader.paypalTransactionId.label" default="Paypal Transaction Id" />
		
	</label>
	<g:textField name="paypalTransactionId" value="${orderHeaderInstance?.paypalTransactionId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'addressId', 'error')} ">
	<label for="addressId">
		<g:message code="orderHeader.addressId.label" default="Address Id" />
		
	</label>
	<g:textField name="addressId" value="${orderHeaderInstance?.addressId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="orderHeader.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${orderHeaderInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="orderHeader.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${orderHeaderInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="orderHeader.company.label" default="Company" />
		
	</label>
	<g:textField name="company" value="${orderHeaderInstance?.company}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'addressLine1', 'error')} ">
	<label for="addressLine1">
		<g:message code="orderHeader.addressLine1.label" default="Address Line1" />
		
	</label>
	<g:textField name="addressLine1" value="${orderHeaderInstance?.addressLine1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'addressLine2', 'error')} ">
	<label for="addressLine2">
		<g:message code="orderHeader.addressLine2.label" default="Address Line2" />
		
	</label>
	<g:textField name="addressLine2" value="${orderHeaderInstance?.addressLine2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'landmark', 'error')} ">
	<label for="landmark">
		<g:message code="orderHeader.landmark.label" default="Landmark" />
		
	</label>
	<g:textField name="landmark" value="${orderHeaderInstance?.landmark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="orderHeader.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${orderHeaderInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="orderHeader.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${orderHeaderInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="orderHeader.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${orderHeaderInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="orderHeader.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${orderHeaderInstance?.zip}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'primaryPhone', 'error')} ">
	<label for="primaryPhone">
		<g:message code="orderHeader.primaryPhone.label" default="Primary Phone" />
		
	</label>
	<g:textField name="primaryPhone" value="${orderHeaderInstance?.primaryPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="orderHeader.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${orderHeaderInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="orderHeader.role.label" default="Role" />
		
	</label>
	<g:textField name="role" value="${orderHeaderInstance?.role}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="orderHeader.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${orderHeaderInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderHeaderInstance, field: 'orderItem', 'error')} ">
	<label for="orderItem">
		<g:message code="orderHeader.orderItem.label" default="Order Item" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${orderHeaderInstance?.orderItem?}" var="o">
    <li><g:link controller="orderItem" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="orderItem" action="create" params="['orderHeader.id': orderHeaderInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orderItem.label', default: 'OrderItem')])}</g:link>
</li>
</ul>

</div>

