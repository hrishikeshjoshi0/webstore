<%@ page import="com.openappengine.model.product.ProdProductPrice" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prodProductPrice.label', default: 'ProdProductPrice')}" />
		<title>
			
		</title>
	</head>
	<body>
		<g:form action="save" >
			<fieldset class="form">
				<input type="hidden" id="productId" name="productId" value="${params.productId}" />
				<g:render template="form"/>
				<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				
				<br/>
			</fieldset>
		</g:form>

		<div id="list-prodProductPrice" class="content scaffold-list" role="main">
			<table style="width:100%;">
				<thead>
					<tr>
						<g:sortableColumn property="ppFromDate"
							title="${message(code: 'prodProductPrice.ppFromDate.label', default: 'From Date')}" />
						<g:sortableColumn property="ppToDate"
							title="${message(code: 'prodProductPrice.ppToDate.label', default: 'To Date')}" />
						<g:sortableColumn property="ppPrice"
							title="${message(code: 'prodProductPrice.ppPrice.label', default: 'Price')}" />
					</tr>
				</thead>
				<tbody>
					<g:each in="${prodProductPriceInstanceList}" status="i"
						var="prodProductPriceInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<td><g:formatDate
									date="${prodProductPriceInstance.ppFromDate}" /></td>
							<td><g:formatDate date="${prodProductPriceInstance.ppToDate}" /></td>
							<td>
								${fieldValue(bean: prodProductPriceInstance, field: "ppPrice")}
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prodProductPriceInstanceTotal}" />
			</div>
		</div>
</body>
</html>
