<%@ page import="com.openappengine.product.ProdProductPrice" %>



<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppCurrencyUomId', 'error')} ">
	<label for="ppCurrencyUomId">
		<g:message code="prodProductPrice.ppCurrencyUomId.label" default="Pp Currency Uom Id" />
		
	</label>
	<g:textField name="ppCurrencyUomId" value="${prodProductPriceInstance?.ppCurrencyUomId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppFromDate', 'error')} required">
	<label for="ppFromDate">
		<g:message code="prodProductPrice.ppFromDate.label" default="Pp From Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ppFromDate" precision="day"  value="${prodProductPriceInstance?.ppFromDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppPrice', 'error')} required">
	<label for="ppPrice">
		<g:message code="prodProductPrice.ppPrice.label" default="Pp Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="ppPrice" required="" value="${fieldValue(bean: prodProductPriceInstance, field: 'ppPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: prodProductPriceInstance, field: 'ppToDate', 'error')} required">
	<label for="ppToDate">
		<g:message code="prodProductPrice.ppToDate.label" default="Pp To Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ppToDate" precision="day"  value="${prodProductPriceInstance?.ppToDate}"  />
</div>

