
<%@ page import="com.openappengine.model.common.Image" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.imageId}">
				<li class="fieldcontain">
					<span id="imageId-label" class="property-label"><g:message code="image.imageId.label" default="Image Id" /></span>
					
						<span class="property-value" aria-labelledby="imageId-label"><g:fieldValue bean="${imageInstance}" field="imageId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.fromDate}">
				<li class="fieldcontain">
					<span id="fromDate-label" class="property-label"><g:message code="image.fromDate.label" default="From Date" /></span>
					
						<span class="property-value" aria-labelledby="fromDate-label"><g:formatDate date="${imageInstance?.fromDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="image.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${imageInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.toDate}">
				<li class="fieldcontain">
					<span id="toDate-label" class="property-label"><g:message code="image.toDate.label" default="To Date" /></span>
					
						<span class="property-value" aria-labelledby="toDate-label"><g:formatDate date="${imageInstance?.toDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${imageInstance?.id}" />
					<g:link class="edit" action="edit" id="${imageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
