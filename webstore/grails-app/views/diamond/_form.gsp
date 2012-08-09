<%@ page import="com.openappengine.model.product.Diamond" %>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'pdProductName', 'error')} ">
	<label for="pdProductName">
		<g:message code="prodGemstone.pdProductName.label" default="Name" />
		
	</label>
	<g:textField name="pdProductName" value="${prodDiamondInstance?.pdProductName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'pdInternalName', 'error')} ">
	<label for="pdInternalName">
		<g:message code="prodGemstone.pdInternalName.label" default="Internal Name" />
		
	</label>
	<g:textField name="pdInternalName" value="${prodDiamondInstance?.pdInternalName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'pdDescription', 'error')} ">
	<label for="pdDescription">
		<g:message code="prodGemstone.pdDescription.label" default="Description" />
		
	</label>
	<g:textArea  name="pdDescription" value="${prodDiamondInstance?.pdProductName}" rows="5" cols="20" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'carat', 'error')} ">
	<label for="carat">
		<g:message code="prodGemstone.carat.label" default="Carat" />
		
	</label>
	<g:field type="number" name="carat" value="${fieldValue(bean: prodDiamondInstance, field: 'carat')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'clarity', 'error')} ">
	<label for="clarity">
		<g:message code="prodGemstone.clarity.label" default="Clarity" />
		
	</label>
	<g:textField name="clarity" value="${prodDiamondInstance?.clarity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'cut', 'error')} ">
	<label for="cut">
		<g:message code="prodGemstone.cut.label" default="Cut" />
		
	</label>
	<g:textField name="cut" value="${prodDiamondInstance?.cut}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="prodGemstone.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${prodDiamondInstance?.color}" />
</div>

<div class="fieldcontain ${hasErrors(bean: prodDiamondInstance, field: 'shape', 'error')} ">
	<label for="shape">
		<g:message code="prodGemstone.shape.label" default="Shape" />
		
	</label>
	<g:textField name="shape" value="${prodDiamondInstance?.shape}" />
</div>