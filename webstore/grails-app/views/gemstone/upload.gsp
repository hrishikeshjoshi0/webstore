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
		<g:uploadForm action="uploadImage" method="post">
			<input type="hidden" id="productId" name="productId" value="${params.id}" />
			
			<table>
				<tr class="prop">
					<td valign="top" class="name">
						<label for="payload">File:</label>
					</td>
					<td valign="top">
						<input type="file" id="payloadThumbnailImg" name="payloadThumbnailImg" />
					</td>
					<td valign="top">
						<label for="payload">Used As :</label>
						<input type="text" id="imageType" name="imageType" value="THUMBNAIL" readonly="readonly" />
					</td>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name">
						<label for="payload">File:</label>
					</td>
					<td valign="top">
						<input type="file" id="payloadDetailImg" name="payloadDetailImg" />
					</td>
					<td valign="top">
						<label for="payload">Used As :</label>
						<input type="text" id="imageType" name="imageType" value="DETAIL" readonly="readonly" />
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
