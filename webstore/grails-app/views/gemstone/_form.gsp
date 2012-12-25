<script type="text/javascript">

function selectCat1s() {
	$.ajax({
        type: 'GET',
        url: "<g:createLink controller='product' action='ajaxGetCat1ForProductType' />" 
	        	+ "?productTypeId=" + $("#productType").val(),
        success: function(data) {
            $('#cat1Selection').html(data);
        }
    });
}

$(document).ready(function() {
	selectCat1s();
	
	$("#productType").change(function() { 
		selectCat1s();  
	});
		
});
</script>	    
<%@ page import="com.openappengine.model.product.Gemstone" %>
<table class="form">
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="Stone ID" />
		</td>
		<td>
			<g:textField name="stoneId" value="${prodGemstoneInstance?.stoneId}" />		
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
		<ckeditor:editor name="pdDescription" height="400px" width="80%">
			<%=prodGemstoneInstance?.pdDescription %>
		</ckeditor:editor>
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.pdProductName.label" default="No of Pieces" />
		</td>
		<td>
			<g:textField name="pieces" value="${prodGemstoneInstance?.pieces}" />		
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
			<g:message code="prodGemstone.measurement.label" default="Measurements" />
		</td>
		<td>
			<g:textField name="measurement" value="${prodGemstoneInstance?.measurement}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.treatments.label" default="Treatments" />
		</td>
		<td>
			<g:textField name="treatment" value="${prodGemstoneInstance?.treatment}" />		
		</td>
	</tr>
	<tr>
		<td>
			<g:message code="prodGemstone.certi.label" default="Certification" />
		</td>
		<td>
			<g:textField name="certi" value="${prodGemstoneInstance?.certi}" />		
		</td>
	</tr>
	
	<tr>
		<td>
			<g:message code="prodGemstone.productType.label" default="Product Type" />
		</td>
		<td>
			<g:select id="productType" name="productTypeId"
				value="${prodGemstoneInstance?.productType?.productTypeId}"
				from="${productTypes}" optionKey="productTypeId"
				optionValue="productTypeName" />
		</td>
	</tr>

	<tr>
		<td>
			
		</td>
		<td id="cat1Selection" valign="top">
			<select name="cat1">
				<option value="Nil">Select...</option>
			</select>
		</td>
	</tr>
</table>