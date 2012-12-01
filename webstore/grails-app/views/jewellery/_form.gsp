<%@ page import="com.openappengine.model.product.Jewellery" %>

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

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdAmountUomType', 'error')} ">
	<label for="pdAmountUomType">
		<g:message code="jewellery.pdAmountUomType.label" default="Pd Amount Uom Type" />
		
	</label>
	<g:textField name="pdAmountUomType" value="${jewelleryInstance?.pdAmountUomType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdComments', 'error')} ">
	<label for="pdComments">
		<g:message code="jewellery.pdComments.label" default="Pd Comments" />
		
	</label>
	<g:textField name="pdComments" value="${jewelleryInstance?.pdComments}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdDescription', 'error')} ">
	<label for="pdDescription">
		<g:message code="jewellery.pdDescription.label" default="Pd Description" />
		
	</label>
	<ckeditor:editor name="pdDescription" height="400px" width="80%">
		${jewelleryInstance?.pdDescription}
	</ckeditor:editor>
<%--	<g:textField name="pdDescription" value="${jewelleryInstance?.pdDescription}" />--%>
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdInternalName', 'error')} ">
	<label for="pdInternalName">
		<g:message code="jewellery.pdInternalName.label" default="Pd Internal Name" />
		
	</label>
	<g:textField name="pdInternalName" value="${jewelleryInstance?.pdInternalName}" />
</div>


<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdProductName', 'error')} ">
	<label for="pdProductName">
		<g:message code="jewellery.pdProductName.label" default="Pd Product Name" />
		
	</label>
	<g:textField name="pdProductName" value="${jewelleryInstance?.pdProductName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdQuantityIncluded', 'error')} ">
	<label for="pdQuantityIncluded">
		<g:message code="jewellery.pdQuantityIncluded.label" default="Pd Quantity Included" />
		
	</label>
	<g:field type="number" name="pdQuantityIncluded" value="${jewelleryInstance.pdQuantityIncluded}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdQuantityUom', 'error')} ">
	<label for="pdQuantityUom">
		<g:message code="jewellery.pdQuantityUom.label" default="Pd Quantity Uom" />
		
	</label>
	<g:textField name="pdQuantityUom" value="${jewelleryInstance?.pdQuantityUom}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdRequireAmount', 'error')} ">
	<label for="pdRequireAmount">
		<g:message code="jewellery.pdRequireAmount.label" default="Pd Require Amount" />
		
	</label>
	<g:checkBox name="pdRequireAmount" value="${jewelleryInstance?.pdRequireAmount}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdRequireInventory', 'error')} ">
	<label for="pdRequireInventory">
		<g:message code="jewellery.pdRequireInventory.label" default="Pd Require Inventory" />
		
	</label>
	<g:checkBox name="pdRequireInventory" value="${jewelleryInstance?.pdRequireInventory}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdReturnable', 'error')} ">
	<label for="pdReturnable">
		<g:message code="jewellery.pdReturnable.label" default="Pd Returnable" />
		
	</label>
	<g:checkBox name="pdReturnable" value="${jewelleryInstance?.pdReturnable}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdSalesDiscWhenNotAvail', 'error')} ">
	<label for="pdSalesDiscWhenNotAvail">
		<g:message code="jewellery.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" />
		
	</label>
	<g:checkBox name="pdSalesDiscWhenNotAvail" value="${jewelleryInstance?.pdSalesDiscWhenNotAvail}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdSalesDiscontinuationDate', 'error')} ">
	<label for="pdSalesDiscontinuationDate">
		<g:message code="jewellery.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" />
		
	</label>
	<g:datePicker name="pdSalesDiscontinuationDate" precision="day" value="${jewelleryInstance?.pdSalesDiscontinuationDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdSupportDiscontinuationDate', 'error')} ">
	<label for="pdSupportDiscontinuationDate">
		<g:message code="jewellery.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" />
		
	</label>
	<g:datePicker name="pdSupportDiscontinuationDate" precision="day" value="${jewelleryInstance?.pdSupportDiscontinuationDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdTaxable', 'error')} ">
	<label for="pdTaxable">
		<g:message code="jewellery.pdTaxable.label" default="Pd Taxable" />
		
	</label>
	<g:checkBox name="pdTaxable" value="${jewelleryInstance?.pdTaxable}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdWeight', 'error')} ">
	<label for="pdWeight">
		<g:message code="jewellery.pdWeight.label" default="Pd Weight" />
		
	</label>
	<g:field type="number" name="pdWeight" value="${jewelleryInstance.pdWeight}" />
</div>

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'pdWeightUomId', 'error')} ">
	<label for="pdWeightUomId">
		<g:message code="jewellery.pdWeightUomId.label" default="Pd Weight Uom Id" />
		
	</label>
	<g:textField name="pdWeightUomId" value="${jewelleryInstance?.pdWeightUomId}" />
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

<div class="fieldcontain ${hasErrors(bean: jewelleryInstance, field: 'width', 'error')} ">
	<label for="width">
		<g:message code="jewellery.width.label" default="Width" />
		
	</label>
	<g:field type="number" name="width" value="${jewelleryInstance.width}" />
</div>
