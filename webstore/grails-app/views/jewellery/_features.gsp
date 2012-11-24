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

tr>td,tr>th {
	border: 1px;
	margin-top: 5px;
	font-weight: bold;
	color: #369;
	font-size: 13px
}

tr>td:last-child,tr>th:last-child {
	font-weight: bold;
	color: #369;
	font-size: 13px;
}

tr>td:first-child,tr>th:first-child {
	width: 150px;
}
</style>


<p
	style="font-family: 'Droid Sans', Tahoma, Arial, sans-serif; border-bottom: 1px dotted #B5B5B5; text-transform: uppercase;">
	Gemstone Information</p>

<div class="row" style="height: 200px; ">
	<div class="fivecol" style="padding-bottom: 0px;">

		<div class="leftdetails" style="height: 200px">
			<table class="productFeatures">
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Stock ID :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="stockId" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Metal :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="metal" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Length:</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="length" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Width :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="width" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Height :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="height" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>New Weight :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="netWeight" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Gross Weight :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="grossWeight" /></td>
				</tr>

			</table>
		</div>
	</div>

	<div class="fivecol" style="padding-bottom: 0px;">
		<div class="rightdetails">
			<table class="productFeatures">
			<tr>
				<th colspan="2">
				Diamond Details
				</th>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Diamond weight :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="diamondWeight" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Diamond Shape :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="diamondShape" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Diamond Pieces:</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="diamondNoOfPieces" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Diamond Color :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="diamondColor" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Diamond Clarity :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="diamondClarity" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Setting Style :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="settingStyle" /></td>
				</tr>

			</table>
		</div>
	</div>



</div>

<div class="row" style="height: 200px">
	<div class="fivecol" style="padding-bottom: 0px;">

		<div class="leftdetails" style="height: 200px">
			<table class="productFeatures">
			<tr>
				<th colspan="2">
				Color Stone Details
				</th>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Color Stone Name :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="colorStoneName" /></td>
				</tr>
				
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Color Stone Weight :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="colorStoneWeight" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Color Stone Shape :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="colorStoneShape" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Color Stone Pieces:</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="colorStoneNoOfPieces" /></td>
				</tr>
			</table>
		</div>
	</div>

	<div class="fivecol" style="padding-bottom: 0px;">
		<div class="rightdetails">
			<table class="productFeatures">
				<tr>
				<th colspan="2">
				Pearl Details
				</th>
				</tr>
				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Pearl Name :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="pearlName" /></td>
				</tr>
				
				<tr style="border-bottom: 1px dotted #B5B5B5; font-weight: normal;">
					<td>Pearl Weight :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="pearlWeight" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Pearl Shape :</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="pearlShape" /></td>
				</tr>

				<tr style="border-bottom: 1px dotted #B5B5B5;">
					<td>Pearl Pieces:</td>
					<td><g:fieldValue bean="${prodJewelleryInstance}"
							field="pearlNoOfPieces" /></td>
				</tr>
			</table>
		</div>
	</div>



</div>

<%--<p style="font-family:'Droid Sans',Tahoma,Arial,sans-serif;border-bottom: 1px dotted #B5B5B5;text-transform: uppercase;"> --%>
<%--	Review Summary --%>
<%--</p>--%>
<%----%>
<%--<p style="margin-left: 20px; margin-top: 10px;">--%>
<%--<div class="row">--%>
<%--	<div class="fourcol">--%>
<%--		<table style="margin-bottom: 20px;">--%>
<%--			<tr>--%>
<%--				<td>Overall Rating</td>--%>
<%--				<td><span id="overall"> </span></td>--%>
<%--				<td>--%>
<%--					(${prodJewelleryInstance?.calculatedInfo?.averageCustomerRating} OUT OF 5)--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--			<tr>--%>
<%--				<td>Quality & Workmanship</td>--%>
<%--				<td><span id="quality_n_workmanship"></span></td>--%>
<%--				<td>--%>
<%--					(${prodJewelleryInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating} OUT OF 5)--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--		--%>
<%--			<tr>--%>
<%--				<td>Product Satisfaction</td>--%>
<%--				<td><span id="product_satisfaction"></span></td>--%>
<%--				<td>--%>
<%--					(${prodJewelleryInstance?.calculatedInfo?.averageProductSatisfactionRating} OUT OF 5)--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--		--%>
<%--			<tr>--%>
<%--				<td>Wow Factor</td>--%>
<%--				<td><span id="wow_factor"></span></td>--%>
<%--				<td>--%>
<%--					(${prodJewelleryInstance?.calculatedInfo?.averageWowFactorRating} OUT OF 5)--%>
<%--				</td>--%>
<%--			</tr>--%>
<%--		</table>--%>
<%--		<p>--%>
<%--			<g:link controller="productReview" action="create" params="[productId:prodJewelleryInstance?.pdProductId]">--%>
<%--				Write a review--%>
<%--			</g:link>--%>
<%--			--%>
<%--			<span> | </span>--%>
<%--			--%>
<%--			<a href="#tabs" onclick="$('#tabs').tabs('select', 1);">--%>
<%--				Read Reviews--%>
<%--			</a>--%>
<%--		</p>--%>
<%--		<g:hiddenField name="overallRating" value="${prodJewelleryInstance?.calculatedInfo?.averageCustomerRating}" />--%>
<%--		<g:hiddenField name="qualityAndWorkmanshipRating" value="${prodJewelleryInstance?.calculatedInfo?.averageQualityAndWorkmanshipRating}" />--%>
<%--		<g:hiddenField name="productSatisfactionRating" value="${prodJewelleryInstance?.calculatedInfo?.averageProductSatisfactionRating}" />--%>
<%--		<g:hiddenField name="wowFactorRating" value="${prodJewelleryInstance?.calculatedInfo?.averageWowFactorRating}" />--%>
<%--		<script>--%>
<%--			$(function() {--%>
<%--				$('#quality_n_workmanship').ratings(5,--%>
<%--						$('#qualityAndWorkmanshipRating').val(), true);--%>
<%--		--%>
<%--				$('#product_satisfaction').ratings(5,--%>
<%--						$('#productSatisfactionRating').val(), true);--%>
<%--		--%>
<%--				$('#wow_factor').ratings(5, $('#wowFactorRating').val(), true);--%>
<%--		--%>
<%--				$('#overall').ratings(5, $('#overallRating').val(), true);--%>
<%--			});--%>
<%--		</script>		--%>
<%--	</div>--%>
<%--	<div class="fourcol">--%>
<%--		--%>
<%--	</div>--%>
<%--</div>--%>
<%----%>
<%--</p>--%>
