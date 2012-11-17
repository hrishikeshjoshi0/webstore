<script type="text/javascript">
function(price,carat){
	var pricepercarat=price/carat;
	return pricepercarat
}
</script>

<style type="text/css">
.productFeatures tr>td {
	border-bottom: 1px solid #E4E5E7;
	border-left: none;
	border-right: none;
	border-top: none;
	color: #666;
	padding: 2px 0 3px 0;
	vertical-align: bottom;
}

			
			tr> td , tr > th
			{
			border: 1px;
			margin-top: 5px;
			font-weight: bold;
		    color: #369;
		    font-size: 13px
			}
			tr > td:last-child, tr > th:last-child{
			font-weight: bold;
		    color: #369;
		    font-size: 13px;
			}
			tr > td:first-child, tr > th:first-child{
		    width: 100px;
			}
</style>


<p style="font-family:'Droid Sans',Tahoma,Arial,sans-serif;border-bottom: 1px dotted #B5B5B5;text-transform: uppercase;"> 
	Gemstone Information 
</p>

<div class="row" style="height: 300px">
<div class="fivecol">
	
		<div class="leftdetails" style="height: 300px">
			<table class="productFeatures">
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Stone ID :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}"
							field="stoneId" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Name :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}"
							field="pdProductName" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Carat Weight:</td>
					<td>
					<g:fieldValue bean="${prodGemstoneInstance}"
							field="pdWeight" />
					
					</td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>No of Pieces :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}" field="pieces" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Shape   :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}" field="cut" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Color  :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}" field="color" /></td>
				</tr>
				
			</table>
		</div>
		</div>
	
	<div class=fivecol>
		<div class="rightdetails">
			<table class="productFeatures">
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Clarity :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}"
							field="clarity" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Cut :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}"
							field="cut" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Measurements:</td>
					<td>
					<g:fieldValue bean="${prodGemstoneInstance}"
							field="measurement" />
					
					</td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Origin :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}" field="origin" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Treatments   :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}" field="treatment" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Certificate  :</td>
					<td><g:fieldValue bean="${prodGemstoneInstance}" field="certi" /></td>
				</tr>
				
			</table>
		</div>
	</div>
	
</div>
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
