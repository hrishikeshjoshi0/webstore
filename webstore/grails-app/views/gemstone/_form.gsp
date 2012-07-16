<%@ page import="com.openappengine.model.product.Gemstone" %>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'carat', 'error')} ">
	<label for="carat">
		<g:message code="prodGemstone.carat.label" default="Carat" />
		
	</label>
	<g:field type="number" name="carat" value="${fieldValue(bean: prodGemstoneInstance, field: 'carat')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'clarity', 'error')} ">
	<label for="clarity">
		<g:message code="prodGemstone.clarity.label" default="Clarity" />
		
	</label>
	<g:textField name="clarity" value="${prodGemstoneInstance?.clarity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="prodGemstone.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${prodGemstoneInstance?.color}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'cut', 'error')} ">
	<label for="cut">
		<g:message code="prodGemstone.cut.label" default="Cut" />
		
	</label>
	<g:textField name="cut" value="${prodGemstoneInstance?.cut}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'grade', 'error')} ">
	<label for="grade">
		<g:message code="prodGemstone.grade.label" default="Grade" />
		
	</label>
	<g:textField name="grade" value="${prodGemstoneInstance?.grade}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'hardness', 'error')} ">
	<label for="hardness">
		<g:message code="prodGemstone.hardness.label" default="Hardness" />
		
	</label>
	<g:textField name="hardness" value="${prodGemstoneInstance?.hardness}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'origin', 'error')} ">
	<label for="origin">
		<g:message code="prodGemstone.origin.label" default="Origin" />
		
	</label>
	<g:textField name="origin" value="${prodGemstoneInstance?.origin}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'pdProductName', 'error')} ">
	<label for="pdProductName">
		<g:message code="prodGemstone.pdProductName.label" default="Pd Product Name" />
		
	</label>
	<g:textField name="pdProductName" value="${prodGemstoneInstance?.pdProductName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'shape', 'error')} ">
	<label for="shape">
		<g:message code="prodGemstone.shape.label" default="Shape" />
		
	</label>
	<g:textField name="shape" value="${prodGemstoneInstance?.shape}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'starSharpness', 'error')} ">
	<label for="starSharpness">
		<g:message code="prodGemstone.starSharpness.label" default="Star Sharpness" />
		
	</label>
	<g:textField name="starSharpness" value="${prodGemstoneInstance?.starSharpness}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'stoneId', 'error')} ">
	<label for="stoneId">
		<g:message code="prodGemstone.stoneId.label" default="Stone Id" />
		
	</label>
	<g:textField name="stoneId" value="${prodGemstoneInstance?.stoneId}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodGemstoneInstance, field: 'treatment', 'error')} ">
	<label for="treatment">
		<g:message code="prodGemstone.treatment.label" default="Treatment" />
		
	</label>
	<g:textField name="treatment" value="${prodGemstoneInstance?.treatment}" />
</div>