<%@ page import="com.openappengine.model.product.ProductTypeAttribute" %>
<!doctype html>
<html>
	<body>
		<div id="list-productTypeAttribute" class="content scaffold-list" role="main">
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="productTypeAttributeId" title="${message(code: 'productTypeAttribute.productTypeAttributeId.label', default: 'Product Type Attribute Id')}" />
					
						<th><g:message code="productTypeAttribute.productType.label" default="Product Type" /></th>
					
						<g:sortableColumn property="productTypeAttributeName" title="${message(code: 'productTypeAttribute.productTypeAttributeName.label', default: 'Product Type Attribute Name')}" />
					
						<g:sortableColumn property="productTypeAttributeType" title="${message(code: 'productTypeAttribute.productTypeAttributeType.label', default: 'Product Type Attribute Type')}" />
						
						<g:sortableColumn property="fromDate" title="${message(code: 'productTypeAttribute.fromDate.label', default: 'From Date')}" />
					
						<g:sortableColumn property="toDate" title="${message(code: 'productTypeAttribute.toDate.label', default: 'To Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productTypeAttributeInstanceList}" status="i" var="productTypeAttributeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productTypeAttributeInstance.productTypeAttributeId}">${fieldValue(bean: productTypeAttributeInstance, field: "productTypeAttributeId")}</g:link></td>
					
						<td>${fieldValue(bean: productTypeAttributeInstance, field: "productType")}</td>
					
						<td>${fieldValue(bean: productTypeAttributeInstance, field: "productTypeAttributeName")}</td>
					
						<td>${fieldValue(bean: productTypeAttributeInstance, field: "productTypeAttributeType")}</td>
						
						<td><g:formatDate date="${productTypeAttributeInstance.fromDate}" format="dd.MM.yyyy"/></td>
					
						<td><g:formatDate date="${productTypeAttributeInstance.toDate}" format="dd.MM.yyyy"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productTypeAttributeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>