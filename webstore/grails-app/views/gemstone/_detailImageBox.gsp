<style type="text/css">
	.clearfix:after{clear:both;content:".";display:block;font-size:0;height:0;line-height:0;visibility:hidden;}
	.clearfix{display:block;zoom:1}
	
	
	ul#thumblist{display:block;}
	ul#thumblist li{float:left;margin-right:2px;list-style:none;}
	ul#thumblist li a{display:block;border-right:1px solid #D9DCDC;}
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
		$('.jqzoom').jqzoom({
	            zoomType: 'standard',
	            lens:true,
	            preloadImages: false,
	            alwaysOn:false
	        });
		
	});
</script>

<div class="clearfix" id="content" style="height: 500px; width: auto;">
	<div class="clearfix">
		<a
			href="${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.mediumImage?.imageUrl)}"
			class="jqzoom" rel='gal1' title="${prodGemstoneInstance.pdProductName}">
			
			<img class="product-img-det"
					alt="${prodGemstoneInstance.pdProductName}"
					title="${prodGemstoneInstance.pdProductName}"
					src="${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.largeImage?.imageUrl)}" />
		</a>
	</div>
	<br />
	<div class="clearfix">
		<ul id="thumblist" class="clearfix">
			<li><a class="product-img-thumb-link" href='javascript:void(0);'
				rel="{gallery: 'gal1', smallimage: '${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.smallImage?.imageUrl)}',largeimage: '${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.largeImage?.imageUrl)}'}">
				<img class="product-img-thumb"
					src='${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.smallImage?.imageUrl)}'></a></li>
			<li><a class="product-img-thumb-link" href='javascript:void(0);'
				rel="{gallery: 'gal1', smallimage: '${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.smallImage?.imageUrl)}',largeimage: '${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.largeImage?.imageUrl)}'}">
				<img class="product-img-thumb"
					src='${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.smallImage?.imageUrl)}'></a></li>
			<li><a class="product-img-thumb-link" href='javascript:void(0);'
				rel="{gallery: 'gal1', smallimage: '${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.smallImage?.imageUrl)}',largeimage: '${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.largeImage?.imageUrl)}'}">
				<img class="product-img-thumb"
					src='${resource(dir: '/images/uploads/product', file: prodGemstoneInstance?.smallImage?.imageUrl)}'></a></li>
		</ul>
	</div>
</div>