<%@ page contentType="text/html; charset=ISO-8859-1" defaultCodec="html" %>
<%@ page import="com.openappengine.model.website.Article" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		
		<script type="text/javascript">
			$(document).ready(function() {
				$.ajax({
			        type: 'GET',
			        url: "<g:createLink controller='article' action='ajaxGetArticleContent' />"
				        + "?articleId=" + $('#articleId').val(), 
			        success: function(data) {
			            $('#content').html(data);
			        }
				});
			});
		</script>	
	</head>
	<body>
		<h1>
			${articleInstance.title}
		</h1>
		
		<input type="hidden" id="articleId" value="${articleInstance.articleId}">
		<div id="content">
		</div>
	</body>
</html>
