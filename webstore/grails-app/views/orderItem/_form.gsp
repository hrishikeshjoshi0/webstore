<%@ page import="com.order.OrderItem" %>



<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'itemId', 'error')} ">
	<label for="itemId">
		<g:message code="orderItem.itemId.label" default="Item Id" />
		
	</label>
	<g:field name="itemId" type="number" value="${orderItemInstance.itemId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'line', 'error')} ">
	<label for="line">
		<g:message code="orderItem.line.label" default="Line" />
		
	</label>
	<g:field name="line" type="number" value="${orderItemInstance.line}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'quantity', 'error')} ">
	<label for="quantity">
		<g:message code="orderItem.quantity.label" default="Quantity" />
		
	</label>
	<g:field name="quantity" type="number" value="${orderItemInstance.quantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'productId', 'error')} ">
	<label for="productId">
		<g:message code="orderItem.productId.label" default="Product Id" />
		
	</label>
	<g:textField name="productId" value="${orderItemInstance?.productId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'unitPrice', 'error')} ">
	<label for="unitPrice">
		<g:message code="orderItem.unitPrice.label" default="Unit Price" />
		
	</label>
	<g:field name="unitPrice" value="${fieldValue(bean: orderItemInstance, field: 'unitPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'lineTotalPrice', 'error')} ">
	<label for="lineTotalPrice">
		<g:message code="orderItem.lineTotalPrice.label" default="Line Total Price" />
		
	</label>
	<g:field name="lineTotalPrice" value="${fieldValue(bean: orderItemInstance, field: 'lineTotalPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderItemInstance, field: 'orderHeader', 'error')} required">
	<label for="orderHeader">
		<g:message code="orderItem.orderHeader.label" default="Order Header" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="orderHeader" name="orderHeader.id" from="${com.order.OrderHeader.list()}" optionKey="id" required="" value="${orderItemInstance?.orderHeader?.id}" class="many-to-one"/>
</div>

