
<%@ page import="com.openappengine.seo.Keywords" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'keywords.label', default: 'Keywords')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-keywords" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-keywords" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="page" title="${message(code: 'keywords.page.label', default: 'Page')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'keywords.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="keyword" title="${message(code: 'keywords.keyword.label', default: 'Keyword')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'keywords.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${keywordsInstanceList}" status="i" var="keywordsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${keywordsInstance.id}">${fieldValue(bean: keywordsInstance, field: "page")}</g:link></td>
					
						<td>${fieldValue(bean: keywordsInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: keywordsInstance, field: "keyword")}</td>
					
						<td>${fieldValue(bean: keywordsInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${keywordsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
