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
	    
	    
		<div class="image-box" style="display: block; width: 240px; position: relative; visibility: visible;">
			
			<img class="product-img-det"
					alt="${productInstance.shape}"
					title="${productInstance.shape}"
					src="${resource(dir: '/images/uploads/product', file: 'Round-Shape-Illustration-Top-View.jpg')}" style="width: 400px; position:relative;"/>
		  
		
		<div class="image-overlay-table" style="padding: 2px; top: 30px; left: 250px; position: absolute; text-align: center; background-color: rgb(255, 255, 255);font-weight: bold;"> 
		<span> ${productInstance.table} </span> </div>
		</div>
		 
		<div class="overlay" id="overlay" style="display:none;"></div>
		<div class="box" id="box" style="display:none;">
            <a class="boxclose" id="boxclose">Close</a>
           	<div id="modal-contents">
           	</div>
        </div>
		<script>
			$('#imgLink').click(function (e) {
				//alert('hi');
				//$("#overlay")
				
				$('#overlay').fadeIn('fast',function(){
					$.ajax({
						type : 'GET',
						async : true,
						url : '<g:createLink controller="product" action="showModalGallery" />',
						success : function(data) {
							$('#modal-contents').html(data);
						}
					});
                });

				$('#box').fadeIn('fast');
                
				e.preventDefault();
			});

			$('#boxclose').click(function(){
                $('#box').fadeOut('fast');
                $('#modal-contents').html("");
                $('#overlay').fadeOut('fast');
            });
            
		</script>
	</div>
	<br />
	<div class="clearfix">
		<ul id="thumblist" class="clearfix">
			<li><a class="product-img-thumb-link" href='javascript:void(0);'
				rel="{gallery: 'gal1', smallimage: '${resource(dir: '/images/uploads/product', file: productInstance?.smallImage?.imageUrl)}',largeimage: '${resource(dir: '/images/uploads/product', file: productInstance?.largeImage?.imageUrl)}'}">
				<img class="product-img-thumb"
					src='${resource(dir: '/images/uploads/product', file: productInstance?.smallImage?.imageUrl)}'></a></li>
			<li><a class="product-img-thumb-link" href='javascript:void(0);'
				rel="{gallery: 'gal1', smallimage: '${resource(dir: '/images/uploads/product', file: productInstance?.smallImage?.imageUrl)}',largeimage: '${resource(dir: '/images/uploads/product', file: productInstance?.largeImage?.imageUrl)}'}">
				<img class="product-img-thumb"
					src='${resource(dir: '/images/uploads/product', file: productInstance?.smallImage?.imageUrl)}'></a></li>
			<li><a class="product-img-thumb-link" href='javascript:void(0);'
				rel="{gallery: 'gal1', smallimage: '${resource(dir: '/images/uploads/product', file: productInstance?.smallImage?.imageUrl)}',largeimage: '${resource(dir: '/images/uploads/product', file: productInstance?.largeImage?.imageUrl)}'}">
				<img class="product-img-thumb"
					src='${resource(dir: '/images/uploads/product', file: productInstance?.smallImage?.imageUrl)}'></a></li>
		</ul>
	</div>
</div>