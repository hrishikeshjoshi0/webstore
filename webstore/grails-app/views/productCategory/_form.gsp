<%@ page import="com.openappengine.model.product.ProductCategory" %>

<g:hiddenField name="parentCategoryId" value="${params.parentCategoryId}"/>
<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'productCategoryName', 'error')} ">
	<label for="productCategoryName">
		<g:message code="productCategory.productCategoryName.label" default="Product Category Name" />
		
	</label>
	<g:textField name="productCategoryName" value="${productCategoryInstance?.productCategoryName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'fromDate', 'error')} ">
	<label for="fromDate">
		<g:message code="productCategory.fromDate.label" default="From Date" />
		
	</label>
	<g:datePicker name="fromDate" precision="day" value="${productCategoryInstance?.fromDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'toDate', 'error')} ">
	<label for="toDate">
		<g:message code="productCategory.toDate.label" default="To Date" />
		
	</label>
	<g:datePicker name="toDate" precision="day" value="${productCategoryInstance?.toDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productCategoryInstance, field: 'productCategoryDescription', 'error')} ">
	<label for="productCategoryDescription">
		<g:message code="productCategory.productCategoryDescription.label" default="Product Category Description" />
		
	</label>
	<g:textArea name="productCategoryDescription" value="${productCategoryInstance?.productCategoryDescription}" rows="5" cols="20" />
</div>