<%@ page import="com.openappengine.model.product.Jewellery" %>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdProductName', 'error')} ">
	<label for="pdProductName">
		<g:message code="jewellery.pdProductName.label" default="Product Name" />
		
	</label>
	<g:textField name="pdProductName" value="${jewelleryInstance?.pdProductName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdDescription', 'error')} ">
	<label for="pdDescription">
		<g:message code="jewellery.pdDescription.label" default="Description" />
		
	</label>
	<g:textField name="pdDescription" value="${jewelleryInstance?.pdDescription}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdInternalName', 'error')} ">
	<label for="pdInternalName">
		<g:message code="jewellery.pdInternalName.label" default="Internal Name" />
		
	</label>
	<g:textField name="pdInternalName" value="${jewelleryInstance?.pdInternalName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'colorStoneName', 'error')} ">
	<label for="colorStoneName">
		<g:message code="jewellery.colorStoneName.label" default="Color Stone Name" />
		
	</label>
	<g:textField name="colorStoneName" value="${jewelleryInstance?.colorStoneName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'colorStoneNoOfPieces', 'error')} ">
	<label for="colorStoneNoOfPieces">
		<g:message code="jewellery.colorStoneNoOfPieces.label" default="Color Stone No Of Pieces" />
		
	</label>
	<g:field type="number" name="colorStoneNoOfPieces" value="${jewelleryInstance.colorStoneNoOfPieces}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'colorStoneShape', 'error')} ">
	<label for="colorStoneShape">
		<g:message code="jewellery.colorStoneShape.label" default="Color Stone Shape" />
		
	</label>
	<g:textField name="colorStoneShape" value="${jewelleryInstance?.colorStoneShape}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'colorStoneWeight', 'error')} ">
	<label for="colorStoneWeight">
		<g:message code="jewellery.colorStoneWeight.label" default="Color Stone Weight" />
		
	</label>
	<g:field type="number" name="colorStoneWeight" value="${jewelleryInstance.colorStoneWeight}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'diamondClarity', 'error')} ">
	<label for="diamondClarity">
		<g:message code="jewellery.diamondClarity.label" default="Diamond Clarity" />
		
	</label>
	<g:field type="number" name="diamondClarity" value="${jewelleryInstance.diamondClarity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'diamondColor', 'error')} ">
	<label for="diamondColor">
		<g:message code="jewellery.diamondColor.label" default="Diamond Color" />
		
	</label>
	<g:field type="number" name="diamondColor" value="${jewelleryInstance.diamondColor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'diamondNoOfPieces', 'error')} ">
	<label for="diamondNoOfPieces">
		<g:message code="jewellery.diamondNoOfPieces.label" default="Diamond No Of Pieces" />
		
	</label>
	<g:field type="number" name="diamondNoOfPieces" value="${jewelleryInstance.diamondNoOfPieces}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'diamondShape', 'error')} ">
	<label for="diamondShape">
		<g:message code="jewellery.diamondShape.label" default="Diamond Shape" />
		
	</label>
	<g:textField name="diamondShape" value="${jewelleryInstance?.diamondShape}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'diamondWeight', 'error')} ">
	<label for="diamondWeight">
		<g:message code="jewellery.diamondWeight.label" default="Diamond Weight" />
		
	</label>
	<g:field type="number" name="diamondWeight" value="${jewelleryInstance.diamondWeight}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'grossWeight', 'error')} ">
	<label for="grossWeight">
		<g:message code="jewellery.grossWeight.label" default="Gross Weight" />
		
	</label>
	<g:field type="number" name="grossWeight" value="${jewelleryInstance.grossWeight}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'height', 'error')} ">
	<label for="height">
		<g:message code="jewellery.height.label" default="Height" />
		
	</label>
	<g:field type="number" name="height" value="${jewelleryInstance.height}" />
</div>


<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'width', 'error')} ">
	<label for="width">
		<g:message code="jewellery.width.label" default="Width" />
		
	</label>
	<g:field type="number" name="width" value="${jewelleryInstance.width}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'length', 'error')} ">
	<label for="length">
		<g:message code="jewellery.length.label" default="Length" />
		
	</label>
	<g:field type="number" name="length" value="${jewelleryInstance.length}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'metal', 'error')} ">
	<label for="metal">
		<g:message code="jewellery.metal.label" default="Metal" />
		
	</label>
	<g:textField name="metal" value="${jewelleryInstance?.metal}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'netWeight', 'error')} ">
	<label for="netWeight">
		<g:message code="jewellery.netWeight.label" default="Net Weight" />
		
	</label>
	<g:field type="number" name="netWeight" value="${jewelleryInstance.netWeight}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pearlName', 'error')} ">
	<label for="pearlName">
		<g:message code="jewellery.pearlName.label" default="Pearl Name" />
		
	</label>
	<g:textField name="pearlName" value="${jewelleryInstance?.pearlName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pearlNoOfPieces', 'error')} ">
	<label for="pearlNoOfPieces">
		<g:message code="jewellery.pearlNoOfPieces.label" default="Pearl No Of Pieces" />
		
	</label>
	<g:field type="number" name="pearlNoOfPieces" value="${jewelleryInstance.pearlNoOfPieces}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pearlShape', 'error')} ">
	<label for="pearlShape">
		<g:message code="jewellery.pearlShape.label" default="Pearl Shape" />
		
	</label>
	<g:textField name="pearlShape" value="${jewelleryInstance?.pearlShape}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pearlWeight', 'error')} ">
	<label for="pearlWeight">
		<g:message code="jewellery.pearlWeight.label" default="Pearl Weight" />
		
	</label>
	<g:field type="number" name="pearlWeight" value="${jewelleryInstance.pearlWeight}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'settingStyle', 'error')} ">
	<label for="settingStyle">
		<g:message code="jewellery.settingStyle.label" default="Setting Style" />
		
	</label>
	<g:textField name="settingStyle" value="${jewelleryInstance?.settingStyle}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'stockId', 'error')} ">
	<label for="stockId">
		<g:message code="jewellery.stockId.label" default="Stock Id" />
		
	</label>
	<g:textField name="stockId" value="${jewelleryInstance?.stockId}" />
</div>