<%@ page import="com.openappengine.model.common.Image"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="admin">
<g:set var="entityName"
	value="${message(code: 'image.label', default: 'Image')}" />
<title>
	Upload Gemstone Image
</title>
</head>
<body>
	<div class="row">
			<div class="elevencol">
				<h1 class="page-subtitle">
					Upload Gemstone Images
				</h1>
				<hr/>
			</div>
	</div>
	
	<div class="row">
			<div class="elevencol">
				<div id="upload-image" class="content scaffold-create" role="main">
					<g:uploadForm action="uploadImage" method="post">
						<input type="hidden" id="productId" name="productId" value="${params.id}" />
						
						<table>
							<tr class="prop">
								<td valign="top" class="name">
									<label for="payload">Small Image :</label>
								</td>
								<td valign="top">
									<input type="file" id="payloadSmallImg" name="payloadSmallImg" />
								</td>
							</tr>
							
							<tr class="prop">
								<td valign="top" class="name">
									<label for="payload">Medium Image:</label>
								</td>
								<td valign="top">
									<input type="file" id="payloadMediumImg" name="payloadMediumImg" />
								</td>
							</tr>
							
							<tr class="prop">
								<td valign="top" class="name">
									<label for="payload">Large Image:</label>
								</td>
								<td valign="top">
									<input type="file" id="payloadLargeImg" name="payloadLargeImg" />
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
			</div>
	</div>		
</body>
</html>
