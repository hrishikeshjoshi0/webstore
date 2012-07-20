<%@ page import="com.openappengine.model.product.ProductReview"%>
<!doctype html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function() {
    setupGridAjax();
});
 
// Turn all sorting and paging links into ajax requests for the grid
function setupGridAjax() {
    $("#list-productReview").find(".pager a, th.sortable a").live('click', function(event) {
        event.preventDefault();
        var url = $(this).attr('href');
 
        var grid = $(".ajax");
        $(grid).html($("#spinner").html());
 
        $.ajax({
            type: 'GET',
            url: url,
            success: function(data) {
                $(grid).html(data);
            }
        })
    });
}
</script>
</head>
<body>
	<div id="list-productReview" class="content scaffold-list" role="main">
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="productReviewId"
						title="${message(code: 'productReview.productReviewId.label', default: 'Product Review Id')}" />

					<g:sortableColumn property="postedAnonymous"
						title="${message(code: 'productReview.postedAnonymous.label', default: 'Posted Anonymous')}" />

					<g:sortableColumn property="postedDate"
						title="${message(code: 'productReview.postedDate.label', default: 'Posted Date')}" />

					<th><g:message code="productReview.product.label"
							default="Product" /></th>

					<g:sortableColumn property="review"
						title="${message(code: 'productReview.review.label', default: 'Review')}" />

					<g:sortableColumn property="status"
						title="${message(code: 'productReview.status.label', default: 'Status')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${productReviewInstanceList}" status="i"
					var="productReviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${productReviewInstance.id}">
								${fieldValue(bean: productReviewInstance, field: "productReviewId")}
							</g:link></td>

						<td><g:formatBoolean
								boolean="${productReviewInstance.postedAnonymous}" /></td>

						<td><g:formatDate date="${productReviewInstance.postedDate}" /></td>

						<td>
							${fieldValue(bean: productReviewInstance, field: "product")}
						</td>

						<td>
							${fieldValue(bean: productReviewInstance, field: "review")}
						</td>

						<td>
							${fieldValue(bean: productReviewInstance, field: "status")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pager">
			<g:paginate total="${productReviewInstanceTotal}" />
		</div>
	</div>
</body>
</html>
