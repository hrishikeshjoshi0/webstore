<script type="text/javascript">
function(price,carat){
	var pricepercarat=price/carat;
	return pricepercarat
}
</script>


<style type="text/css">
<!--
.productFeatures tr>td {
	border-bottom: 1px solid #E4E5E7;
	border-left: none;
	border-right: none;
	border-top: none;
	color: #666;
	padding: 2px 0 3px 0;
	vertical-align: bottom;
}
-->
</style>

<p
	style="font-family: 'Droid Sans', Tahoma, Arial, sans-serif; border-bottom: 1px dotted #B5B5B5; text-transform: uppercase;">
	Diamond Information</p>

<div class="row" style="height: 300px">
<div class="fivecol">
	
		<div class="leftdetails">
			<table class="productFeatures">
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Stock Number :</td>
					<td><g:fieldValue bean="${prodDiamondInstance}"
							field="pdProductName" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Price :</td>
					<td><g:formatNumber
								number="${prodDiamondInstance?.getProductPrice(new Date())}"
								maxFractionDigits="2" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Price per carat:</td>
					<td>
					<g:formatNumber
								number="${pricepercarat}"
								maxFractionDigits="2" />
					
					</td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Carat Weight :</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="carat" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Cut</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="cut" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Color</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="color" /></td>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Clarity</td>
					<td><g:fieldValue bean="${prodDiamondInstance}"
							field="clarity" /></td>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Shape</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="shape" /></td>
				</tr>
			</table>
		</div>
		</div>
	
	<div class=fivecol>
		<div class="rightdetails">
			<table class="productFeatures">
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Stock Number :</td>
					<td><g:fieldValue bean="${prodDiamondInstance}"
							field="pdProductName" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Price :</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="carat" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Price per carat:</td>
					<td><g:javascript>alert('hello')</g:javascript></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Carat Weight :</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="carat" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Cut</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="cut" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Color</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="color" /></td>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Clarity</td>
					<td><g:fieldValue bean="${prodDiamondInstance}"
							field="clarity" /></td>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Shape</td>
					<td><g:fieldValue bean="${prodDiamondInstance}" field="shape" /></td>
				</tr>
			</table>
		</div>
	</div>
	
</div>

<div class="row">
<p
	style="font-family: 'Droid Sans', Tahoma, Arial, sans-serif; border-bottom: 1px dotted #B5B5B5; text-transform: uppercase;">
	Review Summary</p>

<p style="margin-left: 20px; margin-top: 10px;">
	<div class="fourcol">
		<table style="margin-bottom: 20px;">
			<tr>
				<td>Overall Rating</td>
				<td><span id="overall"> </span></td>
				<td>
					<%--					(${prodDiamondInstance?.calculatedInfo?.averageCustomerRating} OUT OF 5)--%>
				</td>
			</tr>
			<tr>
				<td>Quality & Workmanship</td>
				<td><span id="quality_n_workmanship"></span></td>
				<td>
					<%--					(${prodDiamondInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating} OUT OF 5)--%>
				</td>
			</tr>

			<tr>
				<td>Product Satisfaction</td>
				<td><span id="product_satisfaction"></span></td>
				<td>
					<%--					(${prodDiamondInstance?.calculatedInfo?.averageProductSatisfactionRating} OUT OF 5)--%>
				</td>
			</tr>

			<tr>
				<td>Wow Factor</td>
				<td><span id="wow_factor"></span></td>
				<td>
					<%--					(${prodDiamondInstance?.calculatedInfo?.averageWowFactorRating} OUT OF 5)--%>
				</td>
			</tr>
		</table>
		<p>
			<%--			<g:link controller="productReview" action="create" params="[productId:prodDiamondInstance?.pdProductId]">--%>
			Write a review
			<%--			</g:link>--%>

			<span> | </span> <a href="#tabs"
				onclick="$('#tabs').tabs('select', 1);"> Read Reviews </a>
		</p>
		<%--		<g:hiddenField name="overallRating" value="${prodDiamondInstance?.calculatedInfo?.averageCustomerRating}" />--%>
		<%--		<g:hiddenField name="qualityAndWorkmanshipRating" value="${prodDiamondInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating}" />--%>
		<%--		<g:hiddenField name="productSatisfactionRating" value="${prodDiamondInstance?.calculatedInfo?.averageProductSatisfactionRating}" />--%>
		<%--		<g:hiddenField name="wowFactorRating" value="${prodDiamondInstance?.calculatedInfo?.averageWowFactorRating}" />--%>
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
	<div class="fourcol"></div>
</div>

