
<%@ page import="com.openappengine.model.product.ProductReview" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productReview.label', default: 'ProductReview')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productReview" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productReview" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="productReviewId" title="${message(code: 'productReview.productReviewId.label', default: 'Product Review Id')}" />
					
						<g:sortableColumn property="postedAnonymous" title="${message(code: 'productReview.postedAnonymous.label', default: 'Posted Anonymous')}" />
					
						<g:sortableColumn property="postedDate" title="${message(code: 'productReview.postedDate.label', default: 'Posted Date')}" />
					
						<th><g:message code="productReview.product.label" default="Product" /></th>
					
						<g:sortableColumn property="review" title="${message(code: 'productReview.review.label', default: 'Review')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'productReview.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productReviewInstanceList}" status="i" var="productReviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productReviewInstance.id}">${fieldValue(bean: productReviewInstance, field: "productReviewId")}</g:link></td>
					
						<td><g:formatBoolean boolean="${productReviewInstance.postedAnonymous}" /></td>
					
						<td><g:formatDate date="${productReviewInstance.postedDate}" /></td>
					
						<td>${fieldValue(bean: productReviewInstance, field: "product")}</td>
					
						<td>${fieldValue(bean: productReviewInstance, field: "review")}</td>
					
						<td>${fieldValue(bean: productReviewInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productReviewInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
