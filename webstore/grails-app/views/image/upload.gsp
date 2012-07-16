<%@ page import="com.openappengine.model.common.Image"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'image.label', default: 'Image')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div id="upload-image" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.upload.label" args="[entityName]"
				default="Upload Image" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:uploadForm controller="image" action="uploadImage" method="post">
			<input type="hidden" id="productId" name="productId" value="${params.productId}" />
			<table>
				<tr class="prop">
					<td valign="top" class="name">
						<label for="payload">File:</label>
					</td>
					<td valign="top">
						<input type="file" id="payload" name="payload" />
					</td>
					<td valign="top">
						<input type="text" id="imageType" name="imageType" value="${params.imageType}" readonly="readonly" />
					</td>
					<td valign="top">
						<input type="hidden" id="productId" name="productId" value="${params.productId}" />
					</td>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name">
						<g:submitButton name="uploadImage" value="Upload"/>
					</td>
				</tr>	
			</table>
		</g:uploadForm>
	</div>
</body>
</html>
