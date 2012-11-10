
<%@ page import="com.openappengine.model.product.Gemstone"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'prodGemstone.label', default: 'ProdGemstone')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div id="show-prodGemstone" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list prodGemstone">

			<g:if test="${prodGemstoneInstance?.pdProductName}">
				<li class="fieldcontain"><span id="pdProductName-label"
					class="property-label"><g:message
							code="prodGemstone.pdProductName.label" default="Pd Product Name" /></span>

					<span class="property-value" aria-labelledby="pdProductName-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="pdProductName" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.stoneId}">
				<li class="fieldcontain"><span id="stoneId-label"
					class="property-label"><g:message
							code="prodGemstone.stoneId.label" default="Stone Id" /></span> <span
					class="property-value" aria-labelledby="stoneId-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="stoneId" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.carat}">
				<li class="fieldcontain"><span id="carat-label"
					class="property-label"><g:message
							code="prodGemstone.carat.label" default="Carat" /></span> <span
					class="property-value" aria-labelledby="carat-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="carat" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.clarity}">
				<li class="fieldcontain"><span id="clarity-label"
					class="property-label"><g:message
							code="prodGemstone.clarity.label" default="Clarity" /></span> <span
					class="property-value" aria-labelledby="clarity-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="clarity" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.cut}">
				<li class="fieldcontain"><span id="cut-label"
					class="property-label"><g:message
							code="prodGemstone.cut.label" default="Cut" /></span> <span
					class="property-value" aria-labelledby="cut-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="cut" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.color}">
				<li class="fieldcontain"><span id="color-label"
					class="property-label"><g:message
							code="prodGemstone.color.label" default="Color" /></span> <span
					class="property-value" aria-labelledby="color-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="color" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.grade}">
				<li class="fieldcontain"><span id="grade-label"
					class="property-label"><g:message
							code="prodGemstone.grade.label" default="Grade" /></span> <span
					class="property-value" aria-labelledby="grade-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="grade" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.hardness}">
				<li class="fieldcontain"><span id="hardness-label"
					class="property-label"><g:message
							code="prodGemstone.hardness.label" default="Hardness" /></span> <span
					class="property-value" aria-labelledby="hardness-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="hardness" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.shape}">
				<li class="fieldcontain"><span id="shape-label"
					class="property-label"><g:message
							code="prodGemstone.shape.label" default="Shape" /></span> <span
					class="property-value" aria-labelledby="shape-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="shape" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.origin}">
				<li class="fieldcontain"><span id="origin-label"
					class="property-label"><g:message
							code="prodGemstone.origin.label" default="Origin" /></span> <span
					class="property-value" aria-labelledby="origin-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="origin" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.starSharpness}">
				<li class="fieldcontain"><span id="starSharpness-label"
					class="property-label"><g:message
							code="prodGemstone.starSharpness.label" default="Star Sharpness" /></span>

					<span class="property-value" aria-labelledby="starSharpness-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="starSharpness" /></span></li>
			</g:if>

			<g:if test="${prodGemstoneInstance?.treatment}">
				<li class="fieldcontain"><span id="treatment-label"
					class="property-label"><g:message
							code="prodGemstone.treatment.label" default="Treatment" /></span> <span
					class="property-value" aria-labelledby="treatment-label"><g:fieldValue
							bean="${prodGemstoneInstance}" field="treatment" /></span></li>
			</g:if>
		</ol>
	</div>
</body>
</html>