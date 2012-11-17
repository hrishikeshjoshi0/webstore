<%@ page import="com.openappengine.model.product.Gemstone" %>
<table class="form">
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Stone ID" />
		</td>
		<td>
			<g:textField name="pdProductName" value="${prodGemstoneInstance?.stoneId}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Name" />
		</td>
		<td>
			<g:textField name="pdProductName" value="${prodGemstoneInstance?.pdProductName}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Internal Name" />
		</td>
		<td>
			<g:textField name="pdInternalName" value="${prodGemstoneInstance?.pdInternalName}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdDescription.label" default="Description" />
		</td>
		<td>
			<g:textArea  name="pdDescription" value="${prodGemstoneInstance?.pdDescription}" rows="5" cols="20" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="No of Pieces" />
		</td>
		<td>
			<g:textField name="pdProductName" value="${prodGemstoneInstance?.pieces}" />		
		</td>
	</tr>
	
	<tr>
		<td>
			<g:message code="prodGemstone.clarity.label" default="Clarity" />
		</td>
		<td>
			<g:textField name="clarity" value="${prodGemstoneInstance?.clarity}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.carat.label" default="Carat" />
		</td>
		<td>
			<g:field type="number" name="carat" value="${fieldValue(bean: prodGemstoneInstance, field: 'carat')}" />		
		</td>
	</tr>
	<tr>
		<td>
			<label for="cut">
				<g:message code="prodGemstone.cut.label" default="Cut" />
			</label>
		</td>
		<td>
			<g:textField name="cut" value="${prodGemstoneInstance?.cut}" />		
		</td>
	</tr>
	<tr>
		<td>
			<label for="color">
		<g:message code="prodGemstone.color.label" default="Color" />
		
	</label>
		</td>
		<td>
			<g:textField name="color" value="${prodGemstoneInstance?.color}" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="grade">
				<g:message code="prodGemstone.grade.label" default="Grade" />
			</label>
		</td>
		<td>
			<g:textField name="grade" value="${prodGemstoneInstance?.grade}" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="hardness">
				<g:message code="prodGemstone.hardness.label" default="Hardness" />
			</label>
		</td>
		<td>
			<g:textField name="hardness" value="${prodGemstoneInstance?.hardness}" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="shape">
				<g:message code="prodGemstone.shape.label" default="Shape" />
			</label>
		</td>
		<td>
			<g:textField name="shape" value="${prodGemstoneInstance?.shape}" />
		</td>
	</tr>
	<tr>
		<td>
			<label for="origin">
				<g:message code="prodGemstone.origin.label" default="Origin" />
			</label>
		</td>
		<td>
			<g:textField name="origin" value="${prodGemstoneInstance?.origin}" />
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Measurements" />
		</td>
		<td>
			<g:textField name="pdProductName" value="${prodGemstoneInstance?.measurement}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Treatments" />
		</td>
		<td>
			<g:textField name="pdProductName" value="${prodGemstoneInstance?.treatment}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Certification" />
		</td>
		<td>
			<g:textField name="pdProductName" value="${prodGemstoneInstance?.certi}" />		
		</td>
	</tr>
</table>