<!doctype html>
<html>
<head>
	<meta name="layout" content="main">
	<title>WYSIWYG Editor</title>
	<meta content="text/html; charset=utf-8" http-equiv="content-type" />
	<script src="${resource(dir: 'js/wysiwyg', file: 'ckeditor.js')}"></script>
	<script src="${resource(dir: 'js/wysiwyg', file: 'sample.js')}"></script>
	<script>
			$(document).ready(
				$(function() {
					$('.ckeditor').ckeditor();
				})
			);
	</script>
</head>
<body>
	<div class="row">
		<div class="elevencol">
			<g:form controller="wysiwyg" action="saveCms" method="post">
				<textarea class="ckeditor" cols="80" id="editor1" name="cmsData" rows="10">
				</textarea>
			</g:form>
		</div>
	</div>
</body>
</html>