<%@ page import="com.openappengine.model.product.ProductReview"%>
<!doctype html>
<html>
<body>
	<input type="hidden" id="productId" name="productId" value="${params.productId}" />
	<div id="list-productReview" class="content scaffold-list" role="main">
		<g:each in="${productReviewInstanceList}" status="i"
			var="productReviewInstance">
			<div id="review_${i}" class="review">
				<g:hiddenField name="overallRating_${i}" value="${productReviewInstance.overallRating}"/>
				<g:hiddenField name="qualityAndWorkmanshipRating_${i}" value="${productReviewInstance.qualityAndWorkmanshipRating}"/>
				<g:hiddenField name="productSatisfactionRating_${i}" value="${productReviewInstance.productSatisfactionRating}"/>
				<g:hiddenField name="wowFactorRating_${i}" value="${productReviewInstance.wowFactorRating}"/>
				
				<p>
					<g:if test="${productReviewInstance.title != null}">
						<p style="font-size: 12px;margin-left: 20px;margin-top: 5px;">
							<strong>${productReviewInstance.title}</strong> ,
							<g:formatDate date="${productReviewInstance.postedDate}" format="dd.MM.yyyy" />
							
							<br />
							By ${productReviewInstance.nickname}
						</p>
					</g:if>
				</p>
				<p style="margin-left: 20px;margin-top: 10px;">
					<table>
						<tr>
							<td>
								Overall Rating
							</td>
							<td>
								<span id="overall_${i}"> </span>
							</td>
						</tr>
						<tr>
							<td>
								Quality & Workmanship
							</td>
							<td>
								<span id="quality_n_workmanship_${i}"></span>
							</td>
						</tr>
						
						<tr>
							<td>
								Product Satisfaction
							</td>
							<td>
								<span id="product_satisfaction_${i}"></span>
							</td>
						</tr>
						
						<tr>
							<td>
								Wow Factor
							</td>
							<td>
								<span id="wow_factor_${i}"></span>
							</td>
						</tr>
					</table>
				</p>
				
				<p style="margin-left: 20px;margin-top: 10px;">
					" ${productReviewInstance.review} " 
				</p>
				<script>
					$(function() {
						$('#quality_n_workmanship_${i}').ratings(5,$('#qualityAndWorkmanshipRating_${i}').val(),true);
				
						$('#product_satisfaction_${i}').ratings(5,$('#productSatisfactionRating_${i}').val(),true);
				
						$('#wow_factor_${i}').ratings(5,$('#wowFactorRating_${i}').val(),true);
				
						$('#overall_${i}').ratings(5,$('#overallRating_${i}').val(),true);
					});
				</script>
			</div>
		</g:each>
		<%--<div class="pager" style="background-color: #555;">
			<g:paginate total="${productReviewInstanceTotal}" />
		</div>
	--%></div>
	<script type="text/javascript">
			//ajax pagination.
			$("#list-productReview").find(".pager a, th.sortable a").live('click', function(event) {
		        event.preventDefault();
		        var url = $(this).attr('href') + "&productId=" + $("#productId").val();
					 
		        var grid = $("#list-productReview");
		        $(grid).html($("#spinner").html());
		 
		        $.ajax({
		            type: 'GET',
		            url: url,
		            success: function(data) {
		                $(grid).html(data);
		            }
		        })
		    });	
	</script>
</body>
</html>
