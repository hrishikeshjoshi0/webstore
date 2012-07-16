<%@ page import="webstore.product.ProductDiamond" %>



<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdProductId', 'error')} ">
	<label for="pdProductId">
		<g:message code="product_Diamond.pdProductId.label" default="Pd Product Id" />
		
	</label>
	<g:field type="number" name="pdProductId" value="${fieldValue(bean: product_DiamondInstance, field: 'pdProductId')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'carat', 'error')} ">
	<label for="carat">
		<g:message code="product_Diamond.carat.label" default="Carat" />
		
	</label>
	<g:field type="number" name="carat" value="${fieldValue(bean: product_DiamondInstance, field: 'carat')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'clarity', 'error')} ">
	<label for="clarity">
		<g:message code="product_Diamond.clarity.label" default="Clarity" />
		
	</label>
	<g:textField name="clarity" value="${product_DiamondInstance?.clarity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'color', 'error')} ">
	<label for="color">
		<g:message code="product_Diamond.color.label" default="Color" />
		
	</label>
	<g:textField name="color" value="${product_DiamondInstance?.color}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'cut', 'error')} ">
	<label for="cut">
		<g:message code="product_Diamond.cut.label" default="Cut" />
		
	</label>
	<g:textField name="cut" value="${product_DiamondInstance?.cut}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'depth', 'error')} ">
	<label for="depth">
		<g:message code="product_Diamond.depth.label" default="Depth" />
		
	</label>
	<g:field type="number" name="depth" value="${fieldValue(bean: product_DiamondInstance, field: 'depth')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'fluorescence', 'error')} ">
	<label for="fluorescence">
		<g:message code="product_Diamond.fluorescence.label" default="Fluorescence" />
		
	</label>
	<g:textField name="fluorescence" value="${product_DiamondInstance?.fluorescence}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'imageUrlDetail', 'error')} ">
	<label for="imageUrlDetail">
		<g:message code="product_Diamond.imageUrlDetail.label" default="Image Url Detail" />
		
	</label>
	<g:textField name="imageUrlDetail" value="${product_DiamondInstance?.imageUrlDetail}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'imageUrlThumb', 'error')} ">
	<label for="imageUrlThumb">
		<g:message code="product_Diamond.imageUrlThumb.label" default="Image Url Thumb" />
		
	</label>
	<g:textField name="imageUrlThumb" value="${product_DiamondInstance?.imageUrlThumb}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'lengthWidthRatio', 'error')} ">
	<label for="lengthWidthRatio">
		<g:message code="product_Diamond.lengthWidthRatio.label" default="Length Width Ratio" />
		
	</label>
	<g:field type="number" name="lengthWidthRatio" value="${fieldValue(bean: product_DiamondInstance, field: 'lengthWidthRatio')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdAmountUomType', 'error')} ">
	<label for="pdAmountUomType">
		<g:message code="product_Diamond.pdAmountUomType.label" default="Pd Amount Uom Type" />
		
	</label>
	<g:textField name="pdAmountUomType" value="${product_DiamondInstance?.pdAmountUomType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdComments', 'error')} ">
	<label for="pdComments">
		<g:message code="product_Diamond.pdComments.label" default="Pd Comments" />
		
	</label>
	<g:textField name="pdComments" value="${product_DiamondInstance?.pdComments}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdCreatedDate', 'error')} ">
	<label for="pdCreatedDate">
		<g:message code="product_Diamond.pdCreatedDate.label" default="Pd Created Date" />
		
	</label>
	<g:datePicker name="pdCreatedDate" precision="day" value="${product_DiamondInstance?.pdCreatedDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdDescription', 'error')} ">
	<label for="pdDescription">
		<g:message code="product_Diamond.pdDescription.label" default="Pd Description" />
		
	</label>
	<g:textField name="pdDescription" value="${product_DiamondInstance?.pdDescription}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdFixedAmount', 'error')} ">
	<label for="pdFixedAmount">
		<g:message code="product_Diamond.pdFixedAmount.label" default="Pd Fixed Amount" />
		
	</label>
	<g:field type="number" name="pdFixedAmount" value="${fieldValue(bean: product_DiamondInstance, field: 'pdFixedAmount')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdInternalName', 'error')} ">
	<label for="pdInternalName">
		<g:message code="product_Diamond.pdInternalName.label" default="Pd Internal Name" />
		
	</label>
	<g:textField name="pdInternalName" value="${product_DiamondInstance?.pdInternalName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdIntroductionDate', 'error')} ">
	<label for="pdIntroductionDate">
		<g:message code="product_Diamond.pdIntroductionDate.label" default="Pd Introduction Date" />
		
	</label>
	<g:datePicker name="pdIntroductionDate" precision="day" value="${product_DiamondInstance?.pdIntroductionDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdIsVirtual', 'error')} ">
	<label for="pdIsVirtual">
		<g:message code="product_Diamond.pdIsVirtual.label" default="Pd Is Virtual" />
		
	</label>
	<g:checkBox name="pdIsVirtual" value="${product_DiamondInstance?.pdIsVirtual}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdPiecesIncluded', 'error')} ">
	<label for="pdPiecesIncluded">
		<g:message code="product_Diamond.pdPiecesIncluded.label" default="Pd Pieces Included" />
		
	</label>
	<g:field type="number" name="pdPiecesIncluded" value="${fieldValue(bean: product_DiamondInstance, field: 'pdPiecesIncluded')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdProductName', 'error')} ">
	<label for="pdProductName">
		<g:message code="product_Diamond.pdProductName.label" default="Pd Product Name" />
		
	</label>
	<g:textField name="pdProductName" value="${product_DiamondInstance?.pdProductName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdProductType', 'error')} ">
	<label for="pdProductType">
		<g:message code="product_Diamond.pdProductType.label" default="Pd Product Type" />
		
	</label>
	<g:textField name="pdProductType" value="${product_DiamondInstance?.pdProductType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdQuantityIncluded', 'error')} ">
	<label for="pdQuantityIncluded">
		<g:message code="product_Diamond.pdQuantityIncluded.label" default="Pd Quantity Included" />
		
	</label>
	<g:field type="number" name="pdQuantityIncluded" value="${fieldValue(bean: product_DiamondInstance, field: 'pdQuantityIncluded')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdQuantityUom', 'error')} ">
	<label for="pdQuantityUom">
		<g:message code="product_Diamond.pdQuantityUom.label" default="Pd Quantity Uom" />
		
	</label>
	<g:textField name="pdQuantityUom" value="${product_DiamondInstance?.pdQuantityUom}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdRequireAmount', 'error')} ">
	<label for="pdRequireAmount">
		<g:message code="product_Diamond.pdRequireAmount.label" default="Pd Require Amount" />
		
	</label>
	<g:checkBox name="pdRequireAmount" value="${product_DiamondInstance?.pdRequireAmount}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdRequireInventory', 'error')} ">
	<label for="pdRequireInventory">
		<g:message code="product_Diamond.pdRequireInventory.label" default="Pd Require Inventory" />
		
	</label>
	<g:checkBox name="pdRequireInventory" value="${product_DiamondInstance?.pdRequireInventory}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdReturnable', 'error')} ">
	<label for="pdReturnable">
		<g:message code="product_Diamond.pdReturnable.label" default="Pd Returnable" />
		
	</label>
	<g:checkBox name="pdReturnable" value="${product_DiamondInstance?.pdReturnable}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdSalesDiscWhenNotAvail', 'error')} ">
	<label for="pdSalesDiscWhenNotAvail">
		<g:message code="product_Diamond.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" />
		
	</label>
	<g:checkBox name="pdSalesDiscWhenNotAvail" value="${product_DiamondInstance?.pdSalesDiscWhenNotAvail}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdSalesDiscontinuationDate', 'error')} ">
	<label for="pdSalesDiscontinuationDate">
		<g:message code="product_Diamond.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" />
		
	</label>
	<g:datePicker name="pdSalesDiscontinuationDate" precision="day" value="${product_DiamondInstance?.pdSalesDiscontinuationDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdSupportDiscontinuationDate', 'error')} ">
	<label for="pdSupportDiscontinuationDate">
		<g:message code="product_Diamond.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" />
		
	</label>
	<g:datePicker name="pdSupportDiscontinuationDate" precision="day" value="${product_DiamondInstance?.pdSupportDiscontinuationDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdTaxable', 'error')} ">
	<label for="pdTaxable">
		<g:message code="product_Diamond.pdTaxable.label" default="Pd Taxable" />
		
	</label>
	<g:checkBox name="pdTaxable" value="${product_DiamondInstance?.pdTaxable}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdWeight', 'error')} ">
	<label for="pdWeight">
		<g:message code="product_Diamond.pdWeight.label" default="Pd Weight" />
		
	</label>
	<g:field type="number" name="pdWeight" value="${fieldValue(bean: product_DiamondInstance, field: 'pdWeight')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pdWeightUomId', 'error')} ">
	<label for="pdWeightUomId">
		<g:message code="product_Diamond.pdWeightUomId.label" default="Pd Weight Uom Id" />
		
	</label>
	<g:textField name="pdWeightUomId" value="${product_DiamondInstance?.pdWeightUomId}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'polish', 'error')} ">
	<label for="polish">
		<g:message code="product_Diamond.polish.label" default="Polish" />
		
	</label>
	<g:textField name="polish" value="${product_DiamondInstance?.polish}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'pricePerCarat', 'error')} ">
	<label for="pricePerCarat">
		<g:message code="product_Diamond.pricePerCarat.label" default="Price Per Carat" />
		
	</label>
	<g:field type="number" name="pricePerCarat" value="${fieldValue(bean: product_DiamondInstance, field: 'pricePerCarat')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'prodProductPrices', 'error')} ">
	<label for="prodProductPrices">
		<g:message code="product_Diamond.prodProductPrices.label" default="Prod Product Prices" />
		
	</label>
	<g:select name="prodProductPrices" from="${webstore.product.ProdProductPrice.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${product_DiamondInstance?.prodProductPrices*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'shape', 'error')} ">
	<label for="shape">
		<g:message code="product_Diamond.shape.label" default="Shape" />
		
	</label>
	<g:textField name="shape" value="${product_DiamondInstance?.shape}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'symmetry', 'error')} ">
	<label for="symmetry">
		<g:message code="product_Diamond.symmetry.label" default="Symmetry" />
		
	</label>
	<g:textField name="symmetry" value="${product_DiamondInstance?.symmetry}" />
</div>

<div class="fieldcontain ${hasErrors(bean: product_DiamondInstance, field: 'table', 'error')} ">
	<label for="table">
		<g:message code="product_Diamond.table.label" default="Table" />
		
	</label>
	<g:field type="number" name="table" value="${fieldValue(bean: product_DiamondInstance, field: 'table')}" />
</div>

