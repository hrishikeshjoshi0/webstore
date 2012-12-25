<%@ page import="com.openappengine.model.product.Jewellery" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'jewellery.label', default: 'Jewellery')}" />
		<title>
			Edit Jewellery
		</title>
	</head>
	<body>
		<div class="row">
			<div class="elevencol">
				<h1 class="page-subtitle">
					Edit Jewellery
				</h1>
				<hr/>
			</div>
		</div>
		
		<div class="row">
			<div class="elevencol">
				<div id="edit-jewellery" class="content scaffold-edit" role="main">
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${jewelleryInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${jewelleryInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:form method="post" >
						<g:hiddenField name="id" value="${jewelleryInstance?.pdProductId}" />
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
