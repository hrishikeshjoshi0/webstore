<%@ page import="com.openappengine.model.product.ProductReview"%>

<script>
	$(function() {
		$('#quality_n_workmanship').ratings(5).bind('ratingchanged', function(event, data) {
		    $('#quality_n_workmanship_rating').text(data.rating);
		    $('#qualityAndWorkmanshipRating').val(data.rating);
		});

		$('#product_satisfaction').ratings(5).bind('ratingchanged', function(event, data) {
			$('#product_satisfaction_rating').text(data.rating);
			$('#productSatisfactionRating').val(data.rating);
		});

		$('#wow_factor').ratings(5).bind('ratingchanged', function(event, data) {
			$('#wow_factor_rating').text(data.rating);
			$('#wowFactorRating').val(data.rating);
		});

		$('#overall').ratings(5).bind('ratingchanged', function(event, data) {
			$('#overall_rating').text(data.rating);
			$('#overallRating').val(data.rating);
		});
	});
</script>

<g:hiddenField name="product.pdProductId" value="${productReviewInstance?.product?.pdProductId}"/>
<g:hiddenField name="productSatisfactionRating" value="0"/>
<g:hiddenField name="wowFactorRating" value="0"/>
<g:hiddenField name="qualityAndWorkmanshipRating" value="0"/>
<g:hiddenField name="overallRating" value="0"/>

<div class="row">
	<div class="tencol" style="margin-bottom: 4px;margin-top: 0px;">
		<p style="text-align: right;">
			<g:link controller="${productReviewInstance?.product?.pdProductCategory}"
				action="viewDetails"
				params="[id : productReviewInstance?.product?.pdProductId]"
				style="font-size: 12px;font-family:'Droid Sans',Tahoma,Arial,sans-serif;">
				Go Back to Details	
			</g:link>
		</p>
	</div>
	<div class="tencol" style="border-bottom: 1px solid #B5B5B5;margin-top:-10px;">
		<div class="left">
			<img class="product-img-det" style="width:180px;height: 120px;"
				alt="${productReviewInstance?.product?.pdProductName}"
				title="${productReviewInstance?.product?.pdProductName}"
				src="${resource(dir: '/images/uploads/product', file: productReviewInstance?.product?.smallImage?.imageUrl)}" />
		</div>

		<div class="right" style="width: 600px;font-size: 12px;font-family:'Droid Sans',Tahoma,Arial,sans-serif;">
			<div style="float: left;">
				<span style="text-transform: uppercase;">
					${productReviewInstance?.product?.pdProductName}
				</span>
				<br />

				<p style="text-align: left;">
					${productReviewInstance?.product?.pdDescription}
				</p>

				<div style="margin-top: 20px;margin-left: -15px;">
					<p style="border-bottom: 1px solid #B5B5B5;">
						Average Ratings :
					</p>
					<table>
						<tr>
							<td>Overall Rating</td>
							<td><span id="overall_avg"> </span></td>
							<td>(${productReviewInstance?.product?.calculatedInfo.averageCustomerRating}
								OUT OF 5)
							</td>
						</tr>
						<tr>
							<td>Quality & Workmanship</td>
							<td><span id="quality_n_workmanship_avg"></span></td>
							<td>(${productReviewInstance?.product?.calculatedInfo.averageQualityAndWorkmanshipRating}
								OUT OF 5)
							</td>
						</tr>
	
						<tr>
							<td>Product Satisfaction</td>
							<td><span id="product_satisfaction_avg"></span></td>
							<td>(${productReviewInstance?.product?.calculatedInfo.averageProductSatisfactionRating}
								OUT OF 5)
							</td>
						</tr>
	
						<tr>
							<td>Wow Factor</td>
							<td><span id="wow_factor_avg"></span></td>
							<td>(${productReviewInstance?.product?.calculatedInfo.averageWowFactorRating}
								OUT OF 5)
							</td>
						</tr>
					</table>
					<g:hiddenField name="overallRating_avg" value="${productReviewInstance?.product?.calculatedInfo.averageCustomerRating}" />
					<g:hiddenField name="qualityAndWorkmanshipRating_avg" value="${productReviewInstance?.product?.calculatedInfo.averageQualityAndWorkmanshipRating}" />
					<g:hiddenField name="productSatisfactionRating_avg" value="${productReviewInstance?.product?.calculatedInfo.averageProductSatisfactionRating}" />
					<g:hiddenField name="wowFactorRating_avg" value="${productReviewInstance?.product?.calculatedInfo.averageWowFactorRating}" />
					<script>
						$(function() {
							$('#quality_n_workmanship_avg').ratings(5,
									$('#qualityAndWorkmanshipRating_avg').val(), true);
					
							$('#product_satisfaction_avg').ratings(5,
									$('#productSatisfactionRating_avg').val(), true);
					
							$('#wow_factor_avg').ratings(5, $('#wowFactorRating_avg').val(), true);
					
							$('#overall_avg').ratings(5, $('#overallRating_avg').val(), true);
						});
					</script>
				</div>
			</div>
		</div>
	</div>
</div>	

<br/>

<div class="row">	
	<div id="ratings" class="threecol">
		<h3 class="sub-heading">
			Product Ratings
		</h3>
		
		<div>
			Overall Rating: <span id="overall_rating"></span> <br />
			<div id="overall"></div>

			Quality & Workmanship: <span id="quality_n_workmanship_rating"></span>
			<br />
			<div id="quality_n_workmanship"></div>

			Product Satisfaction:<span id="product_satisfaction_rating"></span> <br />
			<div id="product_satisfaction"></div>

			Wow Factor: <span id="wow_factor_rating"></span> <br />
			<div id="wow_factor"></div>
		</div>
	</div>
		
	<div id="reviews" class="fivecol">
		<h3 class="sub-heading">
			Write a Product Review
		</h3>
		
		<label for="review"> 
			<g:message code="productReview.nickname.label" default="Nickname" />
		</label>
		<br/>
		<g:textField name="nickname" value="${productReviewInstance?.nickname}"/>
		
		<br/><br/>
		
		<label for="title"> 
			<g:message code="productReview.title.label" default="Title" />
		</label>
		<br/>
		<g:textField name="title" value="${productReviewInstance?.title}" size="50"/>
		
		<br/><br/>
		
		<label for="review"> 
			<g:message code="productReview.review.label" default="Review" />
		</label>
		<br/>
		<g:textArea name="review" value="${productReviewInstance?.review}" rows="10" cols="100" size="50"/>
	</div>
</div>