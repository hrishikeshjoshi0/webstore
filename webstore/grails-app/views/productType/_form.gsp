<%@ page import="com.openappengine.model.product.ProductType" %>

<g:hiddenField name="parentTypeId" value="${params.parentTypeId}"/>
<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'productTypeName', 'error')} ">
	<label for="productTypeName">
		<g:message code="productType.productTypeName.label" default="Product Type Name" />
		
	</label>
	<g:textField name="productTypeName" value="${productTypeInstance?.productTypeName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'fromDate', 'error')} ">
	<label for="fromDate">
		<g:message code="productType.fromDate.label" default="From Date" />
		
	</label>
	<g:datePicker name="fromDate" precision="day" value="${productTypeInstance?.fromDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'toDate', 'error')} ">
	<label for="toDate">
		<g:message code="productType.toDate.label" default="To Date" />
		
	</label>
	<g:datePicker name="toDate" precision="day" value="${productTypeInstance?.toDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'productTypeDescription', 'error')} ">
	<label for="productTypeDescription">
		<g:message code="productType.productTypeDescription.label" default="Product Type Description" />
		
	</label>
	<g:textArea name="productTypeDescription" value="${productTypeInstance?.productTypeDescription}" rows="5" cols="40"/>
</div>