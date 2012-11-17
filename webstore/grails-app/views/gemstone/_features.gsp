<p style="font-family:'Droid Sans',Tahoma,Arial,sans-serif;border-bottom: 1px dotted #B5B5B5;text-transform: uppercase;"> 
	Gemstone Information 
</p>


<table class="productFeatures" style="width: 80%;">
	<tr>
		<td>Stone Id</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="stoneId" /></td>
		
		<td>Clarity</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="clarity" /></td>
	</tr>
	
	<tr>
		<td>Gemstone Name</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="clarity" /></td>
		
		<td>Cut</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="cut" /></td>
	</tr>	
	
	<tr>
		<td>Carat</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="carat" /></td>
		
		<td>Measurements</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="treatment" /></td>
	</tr>
	
	<tr>
		<td>No of pieces</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="carat" /></td>
		
		<td>Origin</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="origin" /></td>
	</tr>
	
	<tr>
		<td>Shape</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="shape" /></td>
		
		<td>Treatment</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="treatment" /></td>
	</tr>

	<tr>
		<td>Color</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="color" /></td>
		
		<td>Certificate</td>
		<td><g:fieldValue bean="${prodGemstoneInstance}" field="color" /></td>
	</tr>
</table>

<p style="font-family:'Droid Sans',Tahoma,Arial,sans-serif;border-bottom: 1px dotted #B5B5B5;text-transform: uppercase;"> 
	Review Summary 
</p>

<p style="margin-left: 20px; margin-top: 10px;">
<div class="row">
	<div class="fourcol">
		<table style="margin-bottom: 20px;">
			<tr>
				<td>Overall Rating</td>
				<td><span id="overall"> </span></td>
				<td>
					(${prodGemstoneInstance?.calculatedInfo?.averageCustomerRating} OUT OF 5)
				</td>
			</tr>
			<tr>
				<td>Quality & Workmanship</td>
				<td><span id="quality_n_workmanship"></span></td>
				<td>
					(${prodGemstoneInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating} OUT OF 5)
				</td>
			</tr>
		
			<tr>
				<td>Product Satisfaction</td>
				<td><span id="product_satisfaction"></span></td>
				<td>
					(${prodGemstoneInstance?.calculatedInfo?.averageProductSatisfactionRating} OUT OF 5)
				</td>
			</tr>
		
			<tr>
				<td>Wow Factor</td>
				<td><span id="wow_factor"></span></td>
				<td>
					(${prodGemstoneInstance?.calculatedInfo?.averageWowFactorRating} OUT OF 5)
				</td>
			</tr>
		</table>
		<p>
			<g:link controller="productReview" action="create" params="[productId:prodGemstoneInstance?.pdProductId]">
				Write a review
			</g:link>
			
			<span> | </span>
			
			<a href="#tabs" onclick="$('#tabs').tabs('select', 1);">
				Read Reviews
			</a>
		</p>
		<g:hiddenField name="overallRating" value="${prodGemstoneInstance?.calculatedInfo?.averageCustomerRating}" />
		<g:hiddenField name="qualityAndWorkmanshipRating" value="${prodGemstoneInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating}" />
		<g:hiddenField name="productSatisfactionRating" value="${prodGemstoneInstance?.calculatedInfo?.averageProductSatisfactionRating}" />
		<g:hiddenField name="wowFactorRating" value="${prodGemstoneInstance?.calculatedInfo?.averageWowFactorRating}" />
		<script>
			$(function() {
				$('#quality_n_workmanship').ratings(5,
						$('#qualityAndWorkmanshipRating').val(), true);
		
				$('#product_satisfaction').ratings(5,
						$('#productSatisfactionRating').val(), true);
		
				$('#wow_factor').ratings(5, $('#wowFactorRating').val(), true);
		
				$('#overall').ratings(5, $('#overallRating').val(), true);
			});
		</script>		
	</div>
	<div class="fourcol">
		
	</div>
</div>

</p>
