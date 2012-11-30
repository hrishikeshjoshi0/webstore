<%@ page import="com.openappengine.model.website.Article" %>
<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="article.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${articleInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: articleInstance, field: 'postedDate', 'error')} ">
	<label for="postedDate">
		<g:message code="article.postedDate.label" default="Posted Date" />
		
	</label>
	<g:datePicker name="postedDate" precision="day" value="${articleInstance?.postedDate}" />
</div>