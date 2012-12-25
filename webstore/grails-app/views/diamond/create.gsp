<%@ page import="com.openappengine.model.product.Diamond" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'diamond.label', default: 'Diamond')}" />
		<title>
			Add New Diamond
		</title>
	</head>
	<body>
		<div class="row">
			<div class="elevencol">
				<h1 class="page-subtitle">
					New Diamond
				</h1>
				<hr/>
			</div>
		</div>
		
		<div id="create-diamond" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${diamondInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${diamondInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<g:render template="form"/>
				<g:submitButton name="create" class="button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</g:form>
		</div>
	</body>
</html>
