
<%@ page import="webstore.product.ProductDiamond" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product_Diamond.label', default: 'Diamond')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-product_Diamond" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="shape" title="${message(code: 'product_Diamond.shape.label', default: 'Shape')}" />
						
						<g:sortableColumn property="carat" title="${message(code: 'product_Diamond.carat.label', default: 'Carat')}" />
						
						<g:sortableColumn property="cut" title="${message(code: 'product_Diamond.cut.label', default: 'Cut')}" />
						
						<g:sortableColumn property="color" title="${message(code: 'product_Diamond.color.label', default: 'Color')}" />
					
						<g:sortableColumn property="clarity" title="${message(code: 'product_Diamond.clarity.label', default: 'Clarity')}" />
					
						<g:sortableColumn property="polish" title="${message(code: 'product_Diamond.polish.label', default: 'Polish')}" />
						
						<g:sortableColumn property="polish" title="${message(code: 'product_Diamond.syymetry.label', default: 'Symmetry')}" />
						
						<g:sortableColumn property="depth" title="${message(code: 'product_Diamond.depth.label', default: 'Depth')}" />
						
						<g:sortableColumn property="table" title="${message(code: 'product_Diamond.depth.label', default: 'Table')}" />
						
						<g:sortableColumn property="fluoroscence" title="${message(code: 'product_Diamond.fluoroscence.label', default: 'Flur')}" />
					
						<g:sortableColumn property="pricePerCarat" title="${message(code: 'product_Diamond.pricePerCarat.label', default: 'Price Per Carat')}" />
						
						<th/>
					</tr>
				</thead>
				<tbody>
				<g:each in="${product_DiamondInstanceList}" status="i" var="product_DiamondInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: product_DiamondInstance, field: "shape")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "carat")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "cut")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "color")}</td>
					
						<td>${fieldValue(bean: product_DiamondInstance, field: "clarity")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "polish")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "symmetry")}</td>
					
						<td>${fieldValue(bean: product_DiamondInstance, field: "depth")}</td>
					
						<td>${fieldValue(bean: product_DiamondInstance, field: "table")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "fluoroscence")}</td>
						
						<td>${fieldValue(bean: product_DiamondInstance, field: "pricePerCarat")}</td>
						
						<td>
							<g:link action="show" id="${product_DiamondInstance.id}">
								View
							</g:link>
						</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${product_DiamondInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
