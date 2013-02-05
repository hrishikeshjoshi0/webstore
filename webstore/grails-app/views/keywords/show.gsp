
<%@ page import="com.openappengine.seo.Keywords" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'keywords.label', default: 'Keywords')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-keywords" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-keywords" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list keywords">
			
				<g:if test="${keywordsInstance?.page}">
				<li class="fieldcontain">
					<span id="page-label" class="property-label"><g:message code="keywords.page.label" default="Page" /></span>
					
						<span class="property-value" aria-labelledby="page-label"><g:fieldValue bean="${keywordsInstance}" field="page"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keywordsInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="keywords.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${keywordsInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keywordsInstance?.keyword}">
				<li class="fieldcontain">
					<span id="keyword-label" class="property-label"><g:message code="keywords.keyword.label" default="Keyword" /></span>
					
						<span class="property-value" aria-labelledby="keyword-label"><g:fieldValue bean="${keywordsInstance}" field="keyword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keywordsInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="keywords.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${keywordsInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${keywordsInstance?.id}" />
					<g:link class="edit" action="edit" id="${keywordsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
