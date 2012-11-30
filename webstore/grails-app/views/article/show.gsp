
<%@ page import="com.openappengine.model.website.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-article" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list article">
			
				<g:if test="${articleInstance?.articleId}">
				<li class="fieldcontain">
					<span id="articleId-label" class="property-label"><g:message code="article.articleId.label" default="Article Id" /></span>
					
						<span class="property-value" aria-labelledby="articleId-label"><g:fieldValue bean="${articleInstance}" field="articleId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="article.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:link controller="content" action="show" id="${articleInstance?.content?.id}">${articleInstance?.content?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.postedDate}">
				<li class="fieldcontain">
					<span id="postedDate-label" class="property-label"><g:message code="article.postedDate.label" default="Posted Date" /></span>
					
						<span class="property-value" aria-labelledby="postedDate-label"><g:formatDate date="${articleInstance?.postedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${articleInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="article.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articleInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${articleInstance?.id}" />
					<g:link class="edit" action="edit" id="${articleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
