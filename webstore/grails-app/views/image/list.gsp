
<%@ page import="com.openappengine.model.common.Image" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-image" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="imageId" title="${message(code: 'image.imageId.label', default: 'Image Id')}" />
					
						<g:sortableColumn property="fromDate" title="${message(code: 'image.fromDate.label', default: 'From Date')}" />
					
						<g:sortableColumn property="imageUrl" title="${message(code: 'image.imageUrl.label', default: 'Image Url')}" />
					
						<g:sortableColumn property="toDate" title="${message(code: 'image.toDate.label', default: 'To Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imageInstanceList}" status="i" var="imageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imageInstance.id}">${fieldValue(bean: imageInstance, field: "imageId")}</g:link></td>
					
						<td><g:formatDate date="${imageInstance.fromDate}" /></td>
					
						<td>${fieldValue(bean: imageInstance, field: "imageUrl")}</td>
					
						<td><g:formatDate date="${imageInstance.toDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imageInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
