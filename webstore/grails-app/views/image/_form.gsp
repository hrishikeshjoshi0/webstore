<%@ page import="com.openappengine.model.common.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'imageId', 'error')} ">
	<label for="imageId">
		<g:message code="image.imageId.label" default="Image Id" />
		
	</label>
	<g:field type="number" name="imageId" value="${fieldValue(bean: imageInstance, field: 'imageId')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'fromDate', 'error')} ">
	<label for="fromDate">
		<g:message code="image.fromDate.label" default="From Date" />
		
	</label>
	<g:datePicker name="fromDate" precision="day" value="${imageInstance?.fromDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="image.imageUrl.label" default="Image Url" />
		
	</label>
	<g:textField name="imageUrl" value="${imageInstance?.imageUrl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'toDate', 'error')} ">
	<label for="toDate">
		<g:message code="image.toDate.label" default="To Date" />
		
	</label>
	<g:datePicker name="toDate" precision="day" value="${imageInstance?.toDate}" />
</div>

