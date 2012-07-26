<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<title>Web Store</title>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'orbit-1.2.3.css')}" type="text/css">
<script src="${resource(dir: 'js', file: 'jquery.orbit-1.2.3.min.js')}"></script>

<!--[if IE]>
		<style type="text/css">
		   .timer { display: none !important; }
		   div.caption { background:transparent; filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,endColorstr=#99000000);zoom: 1; }
		</style>
	<![endif]-->

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
			directionalNav : true, // manual advancing directional navs
			captions : false, // do you want captions?
			captionAnimation : 'fade', // fade, slideOpen, none
			captionAnimationSpeed : 800, // if so how quickly should they animate in
			bullets : true, // true or false to activate the bullet navigation
			bulletThumbs : true, // thumbnails for the bullets
			bulletThumbLocation : '', // location from this file where thumbs will be
			afterSlideChange : function() {
			} // empty function
		});
	});
</script>
</head>
<body>
		<div id="top-bar">
			<div id="top-bar-content">
				Free Shipping with every order.
			</div>
		</div>
		
		<hr/>
		
		<div style="padding-top: 5px;">
			<div id="top-banner-slider">
				<img
					src="${resource(dir: 'images/site/home/banner', file: '_1.jpg')}" />
				<img
					src="${resource(dir: 'images/site/home/banner', file: '_2.jpg')}"
					data-caption="#htmlCaption" /> 
				<img
					src="${resource(dir: 'images/site/home/banner', file: '_3.jpg')}" />
			</div>
		</div>

		<div class="clearfix shadow"
			style="padding-top: 5px; margin-top: 10px;">

			<div class="row">
					<div class="fourcol box-small" style="width: 320px;height: 200px;">
						<!-- title -->
						<span class="title">
							Gemstone
						</span>
						<div id="content">
							<div class="left" style="max-width: 200px;">
								<ul class="ullist">
									<li>
										<g:link controller="ProductGemStone" action="list"> Gemstones </g:link>
										</li>
									<li>
										<a href="#">Gemstones</a></li>	
								</ul>
							</div>
							<div class="right">
								<img
									src="${resource(dir: 'images/site/home', file: 'gem-stones.jpg')}"
									class="categoryThumbImages" />
							</div>
						</div>
					</div>

					<div class="fourcol box-small" style="width: 320px;height: 200px;">
						<!-- title -->
						<span class="title">
							Jewelry
						</span>
						<div id="content">
							<div class="left" style="max-width: 200px;">
								<ul class="ullist">
									<li>
										<a href="#">Diamond Jewelry</a></li>
									<li>
										<a href="#">Gemstone Jewelry</a></li>
									<li>
										<a href="#">Artificial Jewelry</a></li>
								</ul>
							</div>
							<div class="right">
								<img
									src="${resource(dir: 'images/site/home', file: 'Dia_Pendant_w_Chain.jpg')}"
									class="categoryThumbImages" />
							</div>
						</div>
					</div>

					<div class="fourcol last box-small" style="width: 320px;height: 200px;">
						<!-- title -->
						<span class="title">
							Diamonds
						</span>
						<div id="content">
							<div class="left" style="max-width: 200px;">
								<ul class="ullist">
									<li>
										<a href="#">Search Diamonds</a></li>
									<li>
										<a href="#">Education</a></li>
								</ul>
							</div>
							<div class="right">
								<img
									src="${resource(dir: 'images/site/home', file: 'Diamond_Bracelet.jpg')}"
									class="categoryThumbImages" />
							</div>
						</div>
					</div>

			</div>

			<div class="clearfix"></div>
			
			<hr/>

			<div class="row">
			<div class="fourcol">
				<span class="title">Diamond Stock List</span>
				<div id="contents">
					<ul class="ullist" style="z-index: 1000;">
						<li><a href="#">List 1</a></li>
						<li><a href="#">List 2</a></li>
					</ul>
				</div>
			</div>
			<div class="eightcol last">
					<span class="title">Diamond Search</span>
					<div id="contents">
						<br /> <br />
					</div>
				</div>
			</div>

			<hr/>

			<div class="clearfix"
			style="padding-top: 5px; margin-top: 10px;">

			<div class="row">
					<div class="fourcol box-small" style="width: 320px;">
						<!-- title -->
						<span class="title">
							Recent Articles
						</span>
							
						<div id="content">
							<div style="max-width: 300px;">
								<ul class="ullist">
									<li class="recent_article">
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										<a class="read_more" href="#">read more</a>	
									</li>
									<li class="recent_article">
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										<a class="read_more" href="#">read more</a>	
									</li>
									<li class="recent_article">
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										<a class="read_more" href="#">read more</a>	
									</li>	
								</ul>
							</div>
						</div>
					</div>

					<div class="fourcol box-small" style="width: 320px;">
						<!-- title -->
						<span class="title">
							Testimonials
						</span>
						
						<div id="content">
							<div style="max-width: 300px;">
								<ul class="ullist">
									<li class="testimonial">
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										<a class="read_more" href="#">read more</a>	
									</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="fourcol last box-small" style="width: 320px;">
						<!-- title -->
						<span class="title">
							Trends
						</span>
						
						<div id="content">
							<div style="max-width: 300px;">
								<ul class="ullist">
									<li class="testimonial">
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										<a class="read_more" href="#">read more</a>	
									</li>
								</ul>
							</div>
						</div>
						
						<hr/>
						
						<span class="title">
							New Additions
						</span>
						
						<div id="content">
							<div style="max-width: 300px;">
								<ul class="ullist">
									<li class="testimonial">
										Nature, color, global, feminine–it’s your time to shine with the hottest trends.
										<a class="read_more" href="#">read more</a>	
									</li>
								</ul>
							</div>
						</div>
					</div>

			</div>

			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>
