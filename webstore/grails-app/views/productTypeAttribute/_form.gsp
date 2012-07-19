<%@ page import="com.openappengine.model.product.ProductTypeAttribute" %>

<div class="fieldcontain ${hasErrors(bean: productTypeAttributeInstance, field: 'productType', 'error')} ">
	<label for="productType">
		<g:message code="productTypeAttribute.productType.label" default="Product Type" />
		
	</label>
	<g:select id="productType" name="productType.productTypeId" from="${com.openappengine.model.product.ProductType.list()}" 
		optionKey="productTypeId" optionValue="productTypeName" required="" value="${productTypeAttributeInstance?.productType?.productTypeId}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeAttributeInstance, field: 'productTypeAttributeName', 'error')} ">
	<label for="productTypeAttributeName">
		<g:message code="productTypeAttribute.productTypeAttributeName.label" default="Product Type Attribute Name" />
		
	</label>
	<g:textField name="productTypeAttributeName" value="${productTypeAttributeInstance?.productTypeAttributeName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeAttributeInstance, field: 'productTypeAttributeType', 'error')} ">
	<label for="productTypeAttributeType">
		<g:message code="productTypeAttribute.productTypeAttributeType.label" default="Product Type Attribute Type" />
		
	</label>
	<g:textField name="productTypeAttributeType" value="${productTypeAttributeInstance?.productTypeAttributeType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeAttributeInstance, field: 'fromDate', 'error')} ">
	<label for="fromDate">
		<g:message code="productTypeAttribute.fromDate.label" default="From Date" />
		
	</label>
	<g:datePicker name="fromDate" precision="day" value="${productTypeAttributeInstance?.fromDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeAttributeInstance, field: 'toDate', 'error')} ">
	<label for="toDate">
		<g:message code="productTypeAttribute.toDate.label" default="To Date" />
		
	</label>
	<g:datePicker name="toDate" precision="day" value="${productTypeAttributeInstance?.toDate}" />
</div>