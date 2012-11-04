<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<title>Web Store</title>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'orbit-1.2.3.css')}" type="text/css">
<script src="${resource(dir: 'js', file: 'jquery.orbit-1.2.3.min.js')}"></script>

<script type="text/javascript" src="${resource(dir: 'js/lightbox', file: 'jquery.lightbox-0.5.js')}"></script>
<link rel="stylesheet"
	href="${resource(dir: 'css/lightbox', file: 'jquery.lightbox-0.5.css')}" type="text/css">


<script type="text/javascript">
	$(function() {
		$('#gallery a').lightBox();
	});
</script>
<style type="text/css">
/* jQuery lightBox plugin - Gallery style */
#gallery {
	padding: 2px;
	width: 320px;
}

#gallery ul {
	list-style: none;
}

#gallery ul li {
	display: inline;
}

#gallery ul img {
	border: 3px solid #FAFAFA;
	border-width: 2px 2px 5px;
}

#gallery ul a:hover img {
	border: 5px solid #eee;
	border-width: 2px 2px 5px;
	color: #222;
}

#gallery ul a:hover {
	color: #fff;
}
</style>

<!-- Run the plugin -->
<script type="text/javascript">
	$(window).load(function() {
		//$('#featured').orbit();
		$('#top-banner-slider').orbit({
			animation : 'fade', // fade, horizontal-slide, vertical-slide, horizontal-push
			animationSpeed : 1200, // how fast animations are
			timer : true, // true or false to have the timer
			advanceSpeed : 2000, // if timer is enabled, time between transitions
			pauseOnHover : true, // if you hover pauses the slider
			startClockOnMouseOut : true, // if clock should start on MouseOut
			startClockOnMouseOutAfter : 1000, // how long after MouseOut should the timer start again
			directionalNav : false, // manual advancing directional navs
			captions : false, // do you want captions?
			captionAnimation : 'slideOpen', // fade, slideOpen, none
			captionAnimationSpeed : 800, // if so how quickly should they animate in
			bullets : true, // true or false to activate the bullet navigation
			bulletThumbs : true, // thumbnails for the bullets
			bulletThumbLocation : '', // location from this file where thumbs will be
			afterSlideChange : function() {
			} // empty function
		});
	});
</script>
<style>
	#box1 {
		background: url(images/site/home/box/box1.jpg) transparent no-repeat;
	}
	
	#box2 {
		background: url(images/site/home/box/box2.jpg) transparent no-repeat;
	}
	
	#box3 {
		background: url(images/site/home/box/box3.jpg) transparent no-repeat;
	}
	
	.diamond {
		width: 50px;
		margin-left:2px;
		text-align: center;
	}
</style>
</head>
<body>
			
	  <h1 class="page-title" style="border-bottom: 1px solid #D9DCDC;margin-top: 15px;">
				Free Shipping with every order.
	  </h1>
		
		<div id="top-banner-slider-wrapper">
			<div id="top-banner-slider" >
				<img
					src="${resource(dir: 'images/site/home/banner', file: '1.jpg')}" />
				<img
					src="${resource(dir: 'images/site/home/banner', file: '2.jpg')}" /> 
				<img
					src="${resource(dir: 'images/site/home/banner', file: '3.jpg')}" />
				<img
					src="${resource(dir: 'images/site/home/banner', file: '4.jpg')}" />	
			</div>
		</div>
		
		<img src="${resource(dir: 'images/', file: 'shadow.png')}" 
			style="width:100%;height:10px;">

			<div class="row" style="margin-left:40px;">
					<div id="box1" class="fourcol box-small" style="width: 320px;height: 150px;">
						<!-- title -->
						<span class="title">
							Gemstones
						</span>
						<div id="content">
							<div class="left" style="">
								<ul class="product_list">
									<li>
										<g:link controller="ProductGemStone" action="list"> Gemstones </g:link>
										</li>
									<li>
										<a href="#">Gemstones</a></li>	
								</ul>
								<br/><br/>
								<g:submitButton class="button" name="checkout" value="More.." style="margin-left:10px;" />
							</div>
						</div>
					</div>

					<div id="box2" class="fourcol box-small" style="width: 320px;height: 150px;">
						<!-- title -->
						<span class="title">
							Jewelry
						</span>
						<div id="content">
							<div class="left" style="">
								<ul class="product_list">
									<li>
										<a href="#">Diamond Jewelry</a></li>
									<li>
										<a href="#">Gemstone Jewelry</a></li>
									<li>
										<a href="#">Artificial Jewelry</a></li>
								</ul>
								<br/>
								<g:submitButton class="button" name="checkout" value="More.." style="margin-left:10px;" />
							</div>
						</div>
					</div>

					<div id="box3" class="fourcol last box-small" style="width: 320px;height: 150px;">
						<!-- title -->
						<span class="title">
							Diamonds
						</span>
						<div id="content">
							<div class="left" style=";">
								<ul class="product_list">
									<li>
										<a href="#">Search Diamonds</a></li>
									<li>
										<a href="#">Education</a></li>
								</ul>
								<br/><br/>
								<g:submitButton class="button" name="checkout" value="More.." style="margin-left:10px;" />
							</div>
						</div>
					</div>

			</div>

		<div class="row">
			<div class="clearfix elevencol">
				<hr />
			</div>
		</div>

		<div class="row" class="clearfix shadow" style="">
			
			<div class="sevencol last" style="height: 112px; margin-top: 10px; margin-left: 15px">
				<span class="title" style="margin-left: 15px">Diamond Search</span>
				<div id="contents" style="text-align: center; margin-top: 10px">
					<g:form>
					<img id="loose-diamonds-img"
							alt="Diamond Search" src="${resource(dir: 'images/site/home', file: 'diamond-search.png')}">
							<br/>
							<div style="font-size: 9px;">
								<label class="diamond" for="Round-checkbox">
								 	<span class="shape">Round</span><br/>
								 	<input type="checkbox" id="Round-checkbox" name="Round-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Princess-checkbox">
								 	<span class="shape">Princess</span><br/>
								 	<input type="checkbox" id="Princess-checkbox" name="Princess-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Asscher-checkbox">
								 	<span class="shape">Asscher</span><br/>
								 	<input type="checkbox" id="Asscher-checkbox" name="Asscher-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Radiant-checkbox">
								 	<span class="shape">Radiant</span><br/>
								 	<input type="checkbox" id="Radiant-checkbox" name="Radiant-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Cushion-checkbox">
								 	<span class="shape">Cushion</span><br/>
								 	<input type="checkbox" id="Cushion-checkbox" name="Cushion-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Emerald-checkbox">
								 	<span class="shape">Emerald</span><br/>
								 	<input type="checkbox" id="Emerald-checkbox" name="Emerald-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Marquise-checkbox">
								 	<span class="shape">Marquise</span><br/>
								 	<input type="checkbox" id="Marquise-checkbox" name="Marquise-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Oval-checkbox">
								 	<span class="shape">Oval</span><br/>
								 	<input type="checkbox" id="Oval-checkbox" name="Oval-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Pear-checkbox">
								 	<span class="shape">Pear</span><br/>
								 	<input type="checkbox" id="Pear-checkbox" name="Pear-checkbox" value="on" />
								 </label>
								 <label class="diamond" for="Heart-checkbox">
								 	<span class="shape">Heart</span><br/>
								 	<input type="checkbox" id="Heart-checkbox" name="Heart-checkbox" value="on" />
								 </label>
							 </div>
							 <div class="clear"></div>
							 <div style="margin-top: 10px">
							 	<center>
							 		<g:submitButton class="button" name="Search" value="Search Diamonds"/>
							 	</center>
							 </div>
					</g:form> 		
				</div>
			</div>
			
			<%--<div class="fourcol"
				style="margin-left: 50px; height: 112px; margin: 2px;">
				<span class="title">Diamond Stock List</span>
				<div id="contents">
					<ul class="product_list" style="z-index: 1000;">
						<li style="list-style: none;"><a href="#">List 1</a></li>
						<li style="list-style: none;"><a href="#">List 2</a></li>
					</ul>
				</div>
			</div>
			
			--%><div class="fourcol last box-small"
				style="width: 320px; margin-top: 10px; height: 150px;">
				<!-- title -->
				<span class="title"> Gallery</span>
	
				<div id="content">
					<div style="max-width: 300px;">
						<div id="gallery" style="padding:3px;margin-left:10px">
							<ul>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal1.jpg')}" >
						            	<img src="${resource(dir: 'images/gallery', file: 'gal1.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal2.jpg')}" >
						                <img src="${resource(dir: 'images/gallery', file: 'gal2.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal3.jpg')}">
						                <img src="${resource(dir: 'images/gallery', file: 'gal3.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal4.jpg')}">
						                <img src="${resource(dir: 'images/gallery', file: 'gal4.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal5.jpg')}">
						                <img src="${resource(dir: 'images/gallery', file: 'gal5.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal6.jpg')}">
						                <img src="${resource(dir: 'images/gallery', file: 'gal6.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal7.jpg')}">
						                <img src="${resource(dir: 'images/gallery', file: 'gal7.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						        <li>
						            <a href="${resource(dir: 'images/gallery', file: 'gal8.jpg')}">
						                <img src="${resource(dir: 'images/gallery', file: 'gal8.jpg')}" width="50" height="50" alt="" />
						            </a>
						        </li>
						    </ul>
					    </div>
					</div>
				</div>
	
			</div>
		</div>
			
	
	
		<div class="row">
			<div class="clearfix elevencol">
				<hr/>
			</div>
		</div>

		<div class="row">
		
			<div class="fourcol box-small"
				style="width: 320px; margin-left: 38px; margin-top: 10px; height: 150px;">
				<!-- title -->
				<span class="title"> Recent Articles </span>
	
				<div id="content">
					<div style="max-width: 300px;">
						<ul class="product_list">
							<li class="recent_article">Nature, color, global,
								feminine–it’s your time to shine with the hottest trends. <br />
								<a class="read_more" href="#">read more</a>
							</li>
							<li class="recent_article">Nature, color, global,
								feminine–it’s your time to shine with the hottest trends. <br />
								<a class="read_more" href="#">read more</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
	
			<div class="fourcol box-small"
				style="width: 320px; margin-top: 10px; height: 150px;">
				<!-- title -->
				<span class="title"> Poll </span>
	
				<div id="content">
					<div style="max-width: 300px;">
						<g:form>
							<table style="width: 300px; ">
								<tr>
									<td>
										Dummy question for the opinion poll ? 
										Please vote..
									</td>
								<tr>
									<td>
										<g:radio name="A" value="A"/> Option 1
									</td>
								</tr>
								<tr>
									<td>
										<g:radio name="A" value="A"/> Option 2
									</td>
								</tr>
								<tr>
									<td>
										<g:radio name="A" value="A"/> Option 3
									</td>
								</tr>
							</table>
						</g:form>
					</div>
				</div>
			</div>
			
			<div class="fourcol last box-small"
				style="width: 320px; margin-top: 10px; height: 150px;">
				
				
			</div>	
		</div>

			<div class="row">
			<div class="clearfix elevencol">
				<img src="${resource(dir: 'images/', file: 'bottom_shadow.png')}" style="width:100%;height:10px;">
			</div>
		</div>
</body>
</html>
