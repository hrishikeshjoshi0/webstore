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
		
		<label for="review"> 
			<g:message code="productReview.review.label" default="Review" />
		</label>
		<br/>
		<g:textArea name="review" value="${productReviewInstance?.review}" rows="5" cols="25"/>
	</div>
</div>