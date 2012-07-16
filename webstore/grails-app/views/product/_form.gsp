<%@ page import="com.openappengine.product.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdAmountUomType', 'error')} ">
	<label for="pdAmountUomType">
		<g:message code="product.pdAmountUomType.label" default="Pd Amount Uom Type" />
		
	</label>
	<g:textField name="pdAmountUomType" value="${productInstance?.pdAmountUomType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdComments', 'error')} ">
	<label for="pdComments">
		<g:message code="product.pdComments.label" default="Pd Comments" />
		
	</label>
	<g:textField name="pdComments" value="${productInstance?.pdComments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdCreatedDate', 'error')} required">
	<label for="pdCreatedDate">
		<g:message code="product.pdCreatedDate.label" default="Pd Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pdCreatedDate" precision="day"  value="${productInstance?.pdCreatedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdDescription', 'error')} ">
	<label for="pdDescription">
		<g:message code="product.pdDescription.label" default="Pd Description" />
		
	</label>
	<g:textField name="pdDescription" value="${productInstance?.pdDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdFixedAmount', 'error')} required">
	<label for="pdFixedAmount">
		<g:message code="product.pdFixedAmount.label" default="Pd Fixed Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="pdFixedAmount" required="" value="${fieldValue(bean: productInstance, field: 'pdFixedAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdInternalName', 'error')} ">
	<label for="pdInternalName">
		<g:message code="product.pdInternalName.label" default="Pd Internal Name" />
		
	</label>
	<g:textField name="pdInternalName" value="${productInstance?.pdInternalName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdIntroductionDate', 'error')} required">
	<label for="pdIntroductionDate">
		<g:message code="product.pdIntroductionDate.label" default="Pd Introduction Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pdIntroductionDate" precision="day"  value="${productInstance?.pdIntroductionDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdIsVirtual', 'error')} ">
	<label for="pdIsVirtual">
		<g:message code="product.pdIsVirtual.label" default="Pd Is Virtual" />
		
	</label>
	<g:checkBox name="pdIsVirtual" value="${productInstance?.pdIsVirtual}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdPiecesIncluded', 'error')} required">
	<label for="pdPiecesIncluded">
		<g:message code="product.pdPiecesIncluded.label" default="Pd Pieces Included" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="pdPiecesIncluded" required="" value="${fieldValue(bean: productInstance, field: 'pdPiecesIncluded')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdProductName', 'error')} ">
	<label for="pdProductName">
		<g:message code="product.pdProductName.label" default="Pd Product Name" />
		
	</label>
	<g:textField name="pdProductName" value="${productInstance?.pdProductName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdProductType', 'error')} ">
	<label for="pdProductType">
		<g:message code="product.pdProductType.label" default="Pd Product Type" />
		
	</label>
	<g:textField name="pdProductType" value="${productInstance?.pdProductType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdQuantityIncluded', 'error')} required">
	<label for="pdQuantityIncluded">
		<g:message code="product.pdQuantityIncluded.label" default="Pd Quantity Included" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="pdQuantityIncluded" required="" value="${fieldValue(bean: productInstance, field: 'pdQuantityIncluded')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdQuantityUom', 'error')} ">
	<label for="pdQuantityUom">
		<g:message code="product.pdQuantityUom.label" default="Pd Quantity Uom" />
		
	</label>
	<g:textField name="pdQuantityUom" value="${productInstance?.pdQuantityUom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdRequireAmount', 'error')} ">
	<label for="pdRequireAmount">
		<g:message code="product.pdRequireAmount.label" default="Pd Require Amount" />
		
	</label>
	<g:checkBox name="pdRequireAmount" value="${productInstance?.pdRequireAmount}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdRequireInventory', 'error')} ">
	<label for="pdRequireInventory">
		<g:message code="product.pdRequireInventory.label" default="Pd Require Inventory" />
		
	</label>
	<g:checkBox name="pdRequireInventory" value="${productInstance?.pdRequireInventory}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdReturnable', 'error')} ">
	<label for="pdReturnable">
		<g:message code="product.pdReturnable.label" default="Pd Returnable" />
		
	</label>
	<g:checkBox name="pdReturnable" value="${productInstance?.pdReturnable}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdSalesDiscWhenNotAvail', 'error')} ">
	<label for="pdSalesDiscWhenNotAvail">
		<g:message code="product.pdSalesDiscWhenNotAvail.label" default="Pd Sales Disc When Not Avail" />
		
	</label>
	<g:checkBox name="pdSalesDiscWhenNotAvail" value="${productInstance?.pdSalesDiscWhenNotAvail}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdSalesDiscontinuationDate', 'error')} required">
	<label for="pdSalesDiscontinuationDate">
		<g:message code="product.pdSalesDiscontinuationDate.label" default="Pd Sales Discontinuation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pdSalesDiscontinuationDate" precision="day"  value="${productInstance?.pdSalesDiscontinuationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdSupportDiscontinuationDate', 'error')} required">
	<label for="pdSupportDiscontinuationDate">
		<g:message code="product.pdSupportDiscontinuationDate.label" default="Pd Support Discontinuation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="pdSupportDiscontinuationDate" precision="day"  value="${productInstance?.pdSupportDiscontinuationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdTaxable', 'error')} ">
	<label for="pdTaxable">
		<g:message code="product.pdTaxable.label" default="Pd Taxable" />
		
	</label>
	<g:checkBox name="pdTaxable" value="${productInstance?.pdTaxable}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdWeight', 'error')} required">
	<label for="pdWeight">
		<g:message code="product.pdWeight.label" default="Pd Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="pdWeight" required="" value="${fieldValue(bean: productInstance, field: 'pdWeight')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pdWeightUomId', 'error')} ">
	<label for="pdWeightUomId">
		<g:message code="product.pdWeightUomId.label" default="Pd Weight Uom Id" />
		
	</label>
	<g:textField name="pdWeightUomId" value="${productInstance?.pdWeightUomId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'prodProductPrices', 'error')} ">
	<label for="prodProductPrices">
		<g:message code="product.prodProductPrices.label" default="Prod Product Prices" />
		
	</label>
	<g:select name="prodProductPrices" from="${com.openappengine.product.ProdProductPrice.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.prodProductPrices*.id}" class="many-to-many"/>
</div>

