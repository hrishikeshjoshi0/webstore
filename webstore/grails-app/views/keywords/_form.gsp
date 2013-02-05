<%@ page import="com.openappengine.seo.Keywords" %>



<div class="fieldcontain ${hasErrors(bean: keywordsInstance, field: 'page', 'error')} ">
	<label for="page">
		<g:message code="keywords.page.label" default="Page" />
		
	</label>
	<g:textField name="page" value="${keywordsInstance?.page}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: keywordsInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="keywords.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${keywordsInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: keywordsInstance, field: 'keyword', 'error')} ">
	<label for="keyword">
		<g:message code="keywords.keyword.label" default="Keyword" />
		
	</label>
	<g:textField name="keyword" value="${keywordsInstance?.keyword}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: keywordsInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="keywords.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${keywordsInstance?.description}"/>
</div>

