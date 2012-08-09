<p style="font-family:'Droid Sans',Tahoma,Arial,sans-serif;border-bottom: 1px dotted #B5B5B5;text-transform: uppercase;"> 
	Gemstone Information 
</p>


<table class="productFeatures" style="width: 50%;margin-bottom: 15px;">
	<tr>
		<td>Carat</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="carat" /></td>
	</tr>

	<tr>
		<td>Clarity</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="clarity" /></td>
	</tr>

	<tr>
		<td>Color</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="color" /></td>
	</tr>

	<tr>
		<td>Cut</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="cut" /></td>
	</tr>

	<tr>
		<td>Shape</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="shape" /></td>
	</tr>
	
	<tr>
		<td>Symmetry</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="symmetry" /></td>
	</tr>
	
	<tr>
		<td>Depth</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="deptj" /></td>
	</tr>
	
	<tr>
		<td>Length to Width</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="lengthToWidth" /></td>
	</tr>
	
	<tr>
		<td>Fluorescence</td>
		<td><g:fieldValue bean="${prodDiamondInstance}" field="fluorescence" /></td>
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
					(${prodDiamondInstance?.calculatedInfo?.averageCustomerRating} OUT OF 5)
				</td>
			</tr>
			<tr>
				<td>Quality & Workmanship</td>
				<td><span id="quality_n_workmanship"></span></td>
				<td>
					(${prodDiamondInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating} OUT OF 5)
				</td>
			</tr>
		
			<tr>
				<td>Product Satisfaction</td>
				<td><span id="product_satisfaction"></span></td>
				<td>
					(${prodDiamondInstance?.calculatedInfo?.averageProductSatisfactionRating} OUT OF 5)
				</td>
			</tr>
		
			<tr>
				<td>Wow Factor</td>
				<td><span id="wow_factor"></span></td>
				<td>
					(${prodDiamondInstance?.calculatedInfo?.averageWowFactorRating} OUT OF 5)
				</td>
			</tr>
		</table>
		<p>
			<g:link controller="productReview" action="create" params="[productId:prodDiamondInstance?.pdProductId]">
				Write a review
			</g:link>
			
			<span> | </span>
			
			<a href="#tabs" onclick="$('#tabs').tabs('select', 1);">
				Read Reviews
			</a>
		</p>
		<g:hiddenField name="overallRating" value="${prodDiamondInstance?.calculatedInfo?.averageCustomerRating}" />
		<g:hiddenField name="qualityAndWorkmanshipRating" value="${prodDiamondInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating}" />
		<g:hiddenField name="productSatisfactionRating" value="${prodDiamondInstance?.calculatedInfo?.averageProductSatisfactionRating}" />
		<g:hiddenField name="wowFactorRating" value="${prodDiamondInstance?.calculatedInfo?.averageWowFactorRating}" />
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
