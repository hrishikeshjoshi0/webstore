
<%@ page import="com.openappengine.model.product.ProductReview" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productReview.label', default: 'ProductReview')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productReview" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productReview" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productReview">
			
				<g:if test="${productReviewInstance?.productReviewId}">
				<li class="fieldcontain">
					<span id="productReviewId-label" class="property-label"><g:message code="productReview.productReviewId.label" default="Product Review Id" /></span>
					
						<span class="property-value" aria-labelledby="productReviewId-label"><g:fieldValue bean="${productReviewInstance}" field="productReviewId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productReviewInstance?.postedAnonymous}">
				<li class="fieldcontain">
					<span id="postedAnonymous-label" class="property-label"><g:message code="productReview.postedAnonymous.label" default="Posted Anonymous" /></span>
					
						<span class="property-value" aria-labelledby="postedAnonymous-label"><g:formatBoolean boolean="${productReviewInstance?.postedAnonymous}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productReviewInstance?.postedDate}">
				<li class="fieldcontain">
					<span id="postedDate-label" class="property-label"><g:message code="productReview.postedDate.label" default="Posted Date" /></span>
					
						<span class="property-value" aria-labelledby="postedDate-label"><g:formatDate date="${productReviewInstance?.postedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productReviewInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="productReview.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${productReviewInstance?.product?.id}">${productReviewInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productReviewInstance?.review}">
				<li class="fieldcontain">
					<span id="review-label" class="property-label"><g:message code="productReview.review.label" default="Review" /></span>
					
						<span class="property-value" aria-labelledby="review-label"><g:fieldValue bean="${productReviewInstance}" field="review"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productReviewInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="productReview.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${productReviewInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productReviewInstance?.userLoginId}">
				<li class="fieldcontain">
					<span id="userLoginId-label" class="property-label"><g:message code="productReview.userLoginId.label" default="User Login Id" /></span>
					
						<span class="property-value" aria-labelledby="userLoginId-label"><g:fieldValue bean="${productReviewInstance}" field="userLoginId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productReviewInstance?.id}" />
					<g:link class="edit" action="edit" id="${productReviewInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
