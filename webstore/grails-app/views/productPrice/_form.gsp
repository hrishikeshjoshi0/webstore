<%@ page import="com.openappengine.model.product.ProdProductPrice" %>

<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppFromDate', 'error')} required">
	<label for="ppFromDate">
		<g:message code="prodProductPrice.ppFromDate.label" default="From Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ppFromDate" precision="day"  value="${prodProductPriceInstance?.ppFromDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppToDate', 'error')} required">
	<label for="ppToDate">
		<g:message code="prodProductPrice.ppToDate.label" default="To Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ppToDate" precision="day"  value="${prodProductPriceInstance?.ppToDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppPrice', 'error')} required">
	<label for="ppPrice">
		<g:message code="prodProductPrice.ppPrice.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="ppPrice" required="" value="${fieldValue(bean: prodProductPriceInstance, field: 'ppPrice')}"/>
</div>