<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<!-- The 1140px Grid - http://cssgrid.net/ -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: '1140.less')}"
	type="text/less" media="screen" />
<!-- font -->
<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz|Droid+Sans'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>	

<!-- jquery -->
<link rel="stylesheet"
	href="${resource(dir: 'css/ui-lightness', file: 'jquery-ui-1.8.21.custom.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css/ui-lightness', file: 'jquery-ui.min.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css/ui-lightness', file: 'jquery.ui.menubar.css')}"
	type="text/css">

<!-- jqzoom -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.jqzoom.css')}" type="text/css">

<!--css3-mediaqueries-js - http://code.google.com/p/css3-mediaqueries-js/ - 
	Enables media queries in some unsupported browsers-->
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'css3-mediaqueries.js')}"></script>

<script src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery-ui.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'less-1.1.3.min.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'jquery.jqzoom-core.js')}" type="text/javascript"></script>

<script
	src="${resource(dir: 'js/external', file: 'jquery.bgiframe-2.1.2.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.core.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.widget.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.datepicker.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.widget.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.mouse.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.draggable.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.position.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.resizable.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.dialog.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.button.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.observable.js')}"></script>
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.slider.js')}"></script>

        <style type="text/css">
			span.reference{
				position:fixed;
				left:0px;
				bottom:0px;
				background:#000;
				width:100%;
				font-size:10px;
				line-height:20px;
				text-align:right;
				height:20px;
				-moz-box-shadow:-1px 0px 10px #000;
				-webkit-box-shadow:-1px 0px 10px #000;
				box-shadow:-1px 0px 10px #000;
			}
			span.reference a{
				color:#aaa;
				text-transform:uppercase;
				text-decoration:none;
				margin-right:10px;
				
			}
			span.reference a:hover{
				color:#ddd;
			}
		</style>

<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div id="wrap">

		<!-- Header -->
		<div id="header">
			<div id="logo" class="logo">
				<a href="index.html"><img
					src="${resource(dir: 'images/site', file: 'logo.gif')}" alt=""
					title="" border="0" /></a>
			</div>

			<div id="user">
				<span class="division"> <sec:ifNotLoggedIn>
						<g:link class="user" controller="login" action="auth">
							<i class="icon-user icon-large"></i>
							<span>Sign In</span>
						</g:link>
					</sec:ifNotLoggedIn> <sec:ifLoggedIn>
						   Welcome : <sec:username />
					</sec:ifLoggedIn>
				</span> <span class="sep">|</span> <span class="division"> <a
					href="#"> <span>Wish List</span>
				</a>
				</span> <span class="sep">|</span> <span class="division"> <a
					class="basket" href="#"> <i
						class="icon-shopping-cart icon-large"></i> <span>Basket</span>
				</a>
				</span> <span class="sep">|</span> <span class="division">Ship to:</span> <span
					id="locselector" class="division"> <a
					class="dropdown lang en-us" data-loadurl="/header/locale.html"
					data-target="#localeWindow" href="#"> <span id="curFlag"></span>
						<span>English, USD</span> <span></a>
				</span> <span class="sep">|</span> <span id="logout" class="division">
					<span class="logout_icon"></span> <sec:ifLoggedIn>
						<g:link controller="logout" class="user">Log out</g:link>
					</sec:ifLoggedIn>
				</span>
			</div>
		</div>


		<div id="nav" class="clearfix">
			<div class="oe_wrapper">
				<!-- 
				<div id="oe_overlay" class="oe_overlay"></div>
				 -->
				<ul id="oe_menu" class="oe_menu">
					<!-- Gemstones -->
					<li><a href="">Gemstones</a>
						<div class="oe_menu_content">
							<ul>
								<li class="oe_heading">Summer 2011</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Special Events</a></li>
								<li><a href="#">Runway Show</a></li>
								<li><a href="#">Overview</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Winter 2010</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">New York</a></li>
								<li><a href="#">Behind the scenes</a></li>
								<li><a href="#">Interview</a></li>
								<li><a href="#">Photos</a></li>
								<li><a href="#">Download</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Categories</li>
								<li><a href="#">Casual</a></li>
								<li><a href="#">Business</a></li>
								<li><a href="#">Underwear</a></li>
								<li><a href="#">Nature Pure</a></li>
								<li><a href="#">Swimwear</a></li>
								<li><a href="#">Evening</a></li>
							</ul>
						</div></li>
					
					<!-- Jewelry -->	
					<li><a href="">Jewelry</a>
						<div class="oe_menu_content" style="left: -111px;">
							<!-- -112px -->
							<ul>
								<li class="oe_heading">Fashion Shows</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">New York</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Events</li>
								<li><a href="#">Fashion Party 2011</a></li>
								<li><a href="#">Evening specials</a></li>
								<li><a href="#">Fashion Day Milano</a></li>
								<li><a href="#">Model Workshops</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Media</li>
								<li><a href="#">Wallpapers</a></li>
								<li><a href="#">Downloads</a></li>
								<li><a href="#">Images</a></li>
								<li><a href="#">Contest 2011</a></li>
								<li><a href="#">Fashion Mania</a></li>
								<li><a href="#">Green Earth Day</a></li>
							</ul>
						</div></li>
					
					<!-- Diamonds -->		
					<li><a href="">Diamonds</a>
						<div class="oe_menu_content" style="left: -223px;">
							<ul class="oe_full">
								<li class="oe_heading">Fashion Fragrances</li>
								<li><a href="#">Deálure</a></li>
								<li><a href="#">Violet Woman</a></li>
								<li><a href="#">Deep Blue for Men</a></li>
								<li><a href="#">New York, New York</a></li>
								<li><a href="#">Illusion</a></li>
							</ul>
						</div></li>
					<li><a href="">Events</a>
						<div class="oe_menu_content" style="left: -335px;">
							<ul>
								<li class="oe_heading">Shows 2010</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">New York</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Shows 2011</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">New York</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Special Events</li>
								<li><a href="#">Fashion Party 2011</a></li>
								<li><a href="#">Fashion Countdown Party 2010</a></li>
								<li><a href="#">Fashion Day Milano</a></li>
								<li><a href="#">Model Workshops</a></li>
							</ul>
						</div></li>
					
					<!-- Build Your Own Jewelry -->	
					<li><a href="">Build Your Own Jewelry</a>
						<div class="oe_menu_content" style="left: -447px;">
							<ul>
								<li class="oe_heading">Europe</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Asia</li>
								<li><a href="#">Hong Kong</a></li>
								<li><a href="#">Tokio</a></li>
								<li><a href="#">New Delhi</a></li>
								<li><a href="#">Beijing</a></li>
							</ul>
							<ul>
								<li class="oe_heading">United States</li>
								<li><a href="#">New York</a></li>
								<li><a href="#">Los Angeles</a></li>
								<li><a href="#">Seattle</a></li>
								<li><a href="#">Miami</a></li>
							</ul>
						</div>
					</li>
					
					<!-- Gifts -->	
					<li><a href="">Gifts</a>
						<div class="oe_menu_content" style="left: -559px;">
							<ul>
								<li class="oe_heading">Europe</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Asia</li>
								<li><a href="#">Hong Kong</a></li>
								<li><a href="#">Tokio</a></li>
								<li><a href="#">New Delhi</a></li>
								<li><a href="#">Beijing</a></li>
							</ul>
							<ul>
								<li class="oe_heading">United States</li>
								<li><a href="#">New York</a></li>
								<li><a href="#">Los Angeles</a></li>
								<li><a href="#">Seattle</a></li>
								<li><a href="#">Miami</a></li>
							</ul>
						</div>
					</li>
					
					<!-- Education -->	
					<li><a href="">Education</a>
						<div class="oe_menu_content" style="left: -671px;">
							<ul>
								<li class="oe_heading">Europe</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Asia</li>
								<li><a href="#">Hong Kong</a></li>
								<li><a href="#">Tokio</a></li>
								<li><a href="#">New Delhi</a></li>
								<li><a href="#">Beijing</a></li>
							</ul>
							<ul>
								<li class="oe_heading">United States</li>
								<li><a href="#">New York</a></li>
								<li><a href="#">Los Angeles</a></li>
								<li><a href="#">Seattle</a></li>
								<li><a href="#">Miami</a></li>
							</ul>
						</div>
					</li>
					
					<!-- Sale -->
					<li><a href="">Sale</a>
						<div  class="oe_menu_content" style="left: -783px;">
							<ul>
								<li class="oe_heading">Europe</li>
								<li><a href="#">Milano</a></li>
								<li><a href="#">Paris</a></li>
								<li><a href="#">Berlin</a></li>
								<li><a href="#">London</a></li>
							</ul>
							<ul>
								<li class="oe_heading">Asia</li>
								<li><a href="#">Hong Kong</a></li>
								<li><a href="#">Tokio</a></li>
								<li><a href="#">New Delhi</a></li>
								<li><a href="#">Beijing</a></li>
							</ul>
							<ul>
								<li class="oe_heading">United States</li>
								<li><a href="#">New York</a></li>
								<li><a href="#">Los Angeles</a></li>
								<li><a href="#">Seattle</a></li>
								<li><a href="#">Miami</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		<!-- Main Content -->
		<div id="page-content">
			<div id="page" class="clearfix shadow">
				<g:layoutBody />	
			</div>
		</div>

		<div id="spinner" class="spinner" style="display: none;">
			<g:message code="spinner.alt" default="Loading&hellip;" />
		</div>
		
		<script type="text/javascript">
            $(function() {
				var $oe_menu		= $('#oe_menu ');
				var $oe_menu_items	= $oe_menu.children('li');
				//var $oe_overlay		= $('#oe_overlay');

                $oe_menu_items.bind('mouseenter',function(){
					var $this = $(this);
					$this.addClass('slided selected');
					$this.children('div.oe_menu_content').css('z-index','9999').stop(true,true).slideDown(200,function(){
						$oe_menu_items.not('.slided').children('div.oe_menu_content').hide();
						$this.removeClass('slided');
					});
				}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('selected').children('div.oe_menu_content').css('z-index','1');
				});

				$oe_menu.bind('mouseenter',function(){
					var $this = $(this);
					//$oe_overlay.stop(true,true).fadeTo(200, 0.6);
					//$this.addClass('hovered');
				}).bind('mouseleave',function(){
					var $this = $(this);
					//$this.removeClass('hovered');
					//$oe_overlay.stop(true,true).fadeTo(200, 0);
					$oe_menu_items.children('div.oe_menu_content').hide();
				})
            });
        </script>
        
		<g:javascript library="application" />
		<r:layoutResources />
	</div>
	
	<div id="footer" class="shadow">
			<p>&copy; 2012 Your Name
	</div>
</body>
</html>