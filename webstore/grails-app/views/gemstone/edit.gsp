<%@ page import="com.openappengine.model.product.Gemstone" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'prodGemstone.label', default: 'ProdGemstone')}" />
		<title>
			Edit Gemstone
		</title>
	</head>
	<body>
		<div class="row">
			<div class="elevencol">
				<h1 class="page-subtitle">
					Edit Gemstone
				</h1>
				<hr/>
			</div>
		</div>
		
		<div class="row">
			<div class="elevencol">
				<div id="edit-prodGemstone" class="content scaffold-edit" role="main">
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${prodGemstoneInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${prodGemstoneInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:form method="post" >
						<g:hiddenField name="id" value="${prodGemstoneInstance?.pdProductId}" />
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						<fieldset class="buttons">
							<g:actionSubmit class="save button" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
							<g:actionSubmit class="delete button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
		</div>
			</div>
		</div>
	</body>
</html>
