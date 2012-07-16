<%@ page import="com.openappengine.model.common.Image" %>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'fromDate', 'error')} ">
	<label for="fromDate">
		<g:message code="image.fromDate.label" default="From Date" />
		
	</label>
	<g:datePicker name="fromDate" precision="day" value="${imageInstance?.fromDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'toDate', 'error')} ">
	<label for="toDate">
		<g:message code="image.toDate.label" default="To Date" />
		
	</label>
	<g:datePicker name="toDate" precision="day" value="${imageInstance?.toDate}" />
</div>

