<%@ page import="com.openappengine.model.website.Article"%>
<g:if test="${articleInstanceList == null || articleInstanceList.size() == 0}">
	<h3 style="text-align: center;margin: 5px;">
		No Recent Articles.
	</h3>
</g:if>
<g:else>
	<ul class="product_list">
		<g:each in="${articleInstanceList}" status="i" var="articleInstance">
			<li class="recent_article">
			<g:link mapping="articlesMapping" params="[title:articleInstance.title]"
					id="${articleInstance.articleId}">
					${fieldValue(bean: articleInstance, field: "title")}
				</g:link></li>
		</g:each>
	</ul>
</g:else>