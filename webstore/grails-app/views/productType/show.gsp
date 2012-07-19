
<%@ page import="com.openappengine.model.product.ProductType"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'productType.label', default: 'ProductType')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div id="show-productType" class="content scaffold-show" role="main">
		<h1>
			Product Type - ${productTypeInstance?.productTypeName}
		</h1>
		
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		
		<div id="quickLinks" style="margin-left: 20px;">
			<g:link id="viewAttribute" controller="productType" action="listAttributes" 
					params="[productTypeId:productTypeInstance.productTypeId]">
				View Attributes
			</g:link> 
		</div>

		<hr/>
		
		<table style="width: 60%;">
			<tr>
				<td>
					<g:message code="productType.productTypeName.label" default="Product Type Name" />
				</td>
				<td>
					<g:fieldValue bean="${productTypeInstance}" field="productTypeName" />
				</td>
			</tr>
			
			<tr>
				<td>
					<g:message code="productType.fromDate.label" default="From Date" />
				</td>
				<td>
					<g:formatDate format="dd.MM.yyyy" date="${productTypeInstance?.fromDate}"/>
				</td>
			</tr>
			
			<tr>
				<td>
					<g:message code="productType.toDate.label" default="To Date" />
				</td>
				<td>
					<g:formatDate format="dd.MM.yyyy" date="${productTypeInstance?.toDate}"/>
				</td>
			</tr>
			
			<tr>
				<td>
					<g:message code="productType.productTypeDescription.label" default="Description" />
				</td>
				<td>
					<g:fieldValue bean="${productTypeInstance}" field="productTypeDescription" />
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
