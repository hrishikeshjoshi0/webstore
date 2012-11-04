<style type="text/css">
	.clearfix:after{clear:both;content:".";display:block;font-size:0;height:0;line-height:0;visibility:hidden;}
	.clearfix{display:block;zoom:1}
	
	ul#thumblist{display:block;}
	ul#thumblist li{float:left;margin-right:2px;list-style:none;}
	ul#thumblist li a{display:block;border:1px solid #D9DCDC;}
	ul#thumblist li a.zoomThumbActive{
	    border:2px solid #eee;
	}
	
	.jqzoom{
	
		text-decoration:none;
		float:left;
	}
	
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#description1").show();
		$("#description2").hide();
		$("#description3").hide();
	});
</script>

<div class="clearfix" id="content" style="height: 400px; width: auto; position: relative;">
<div class="clearfix">

<div id="gallery">
	<div id="panel">
		<img id="largeImage" src="${resource(dir: '/images', file: 'Round-Shape-Illustration-Top-View.jpg')}" style = "width: 300px;"/>
				
			<div id="description1">
				
				<div class="image-overlay-table" style="padding: 2px; top: 30px; left: 165px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);"> 
						<span> ${productInstance.width}mm </span> </div>
						<div class="image-overlay-table" style="padding: 2px; top: 15px; left: 165px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);"> 
						<span> Length </span> </div>
				
				<div class="image-overlay-table" style="padding: 2px; top: 135px; left: 120px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);"> 
						<span> Width </span> </div>
				<div class="image-overlay-table" style="padding: 2px; top: 150px; left: 117px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);"> 
						<span> ${productInstance.height}mm </span> </div>
			</div>
			
			<div id="description2">
				<div class="image-overlay-table" style="padding: 2px; top: 23px; left: 140px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> 
						<span> ${productInstance.table}% </span> </div>
				<div class="image-overlay-table" style="padding: 2px; top: 1px; left: 135px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> 
						<span> Table% </span> </div>
				
				<div class="image-overlay-table" style="padding: 2px; top: 120px; left: 230px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> 
						<span> Depth </span> </div>
				<div class="image-overlay-table" style="padding: 2px; top: 140px; left: 230px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> 
						<span> ${productInstance.height}mm </span> </div>
			</div>
			
<%--			<div id="description3">--%>
<%--				<div class="image-overlay-table" style="padding: 2px; top: 30px; left: 150px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> --%>
<%--						<span> ${productInstance.table} </span> </div>--%>
<%--				--%>
<%--				<div class="image-overlay-table" style="padding: 2px; top: 120px; left: 150px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> --%>
<%--						<span> ${productInstance.table} </span> </div>--%>
<%--			</div>--%>
				
		</div>
	</div>
</div>

	<div id="thumbs" >
		<div id="thumb1"  style="width: 50px;float: left;" >
        <img src="${resource(dir: '/images', file: 'Round-Shape-Illustration-Top-View.jpg')}" style="width: 50px; position:relative;" alt="1st image description" />
        </div>
        <div id="thumb2" style="width: 50px;float: left;">
        <img src="${resource(dir: '/images', file: 'Round-Shape-Illustration-Side-View.jpg')}" style="width: 50px; position:relative;" alt="2nd image description" />
        </div>
        <div id="thumb3"  style="width: 50px;float: left;">
        <img src="${resource(dir: '/images', file: 'Round-Loose-Diamond-Sample.jpg')}" style="width: 50px; position:relative;" alt="3rd image description" />
        </div>
	</div>
	
		
				
	<script type="text/javascript">
		$('#thumb1 img').click(function(){
		$('#largeImage').attr('src',$(this).attr('src').replace('thumb1','large'));
		$("#description1").show();
		$("#description2").hide();
		$("#description3").hide();
	});

		$('#thumb2 img').click(function(){
			$('#largeImage').attr('src',$(this).attr('src').replace('thumb2','large'));
			$("#description1").hide();
			$("#description2").show();
			$("#description3").hide();
		});

		$('#thumb3 img').click(function(){
			$('#largeImage').attr('src',$(this).attr('src').replace('thumb3','large'));
			$("#description1").hide();
			$("#description2").hide();
			$("#description3").hide();
		});
	</script>
</div>

