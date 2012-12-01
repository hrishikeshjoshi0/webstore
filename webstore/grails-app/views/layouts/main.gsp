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
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: '1140.less')}"
	type="text/less" media="screen" />
<!-- font -->
<link href='http://fonts.googleapis.com/css?family=Crimson+Text' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Yesteryear' rel='stylesheet' type='text/css'>
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
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jquery.jqzoom.css')}"
	type="text/css">

<!-- rating -->
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jquery.ratings.css')}"
	type="text/css">
<!-- 
<link rel="stylesheet" href="${resource(dir: 'css', file: 'xbreadcrumbs.css')}" type="text/less" media="screen" />
 -->
 
 <style>
 	#logos {
 		border : 0px dotted #B5B5B5;
 	}
 	#logos li {
		display: inline;
		list-style-type: none;
		padding-right: 15px;
	}
	
	#logos li > img{
		height : 20px;
	}
	
	#sitemaps {
		color : #666;
 	}
 	
 	#sitemaps li > a {
		color : #666;
 	}
 	
 	#sitemaps li > a:VISITED {
		color : #666;
 	}
 	
 	#sitemaps li {
		display: inline;
		list-style-type: none;
		padding-right: 1px;
		border-right : 1px solid #B5B5B5;
	}
 </style>


<!--css3-mediaqueries-js - http://code.google.com/p/css3-mediaqueries-js/ - 
	Enables media queries in some unsupported browsers-->
<script type="text/javascript"
	src="${resource(dir: 'js', file: 'css3-mediaqueries.js')}"></script>

<script src="${resource(dir: 'js', file: 'jquery-1.7.2.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery-ui.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'less-1.1.3.min.js')}"
	type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'jquery.jqzoom-core.js')}"
	type="text/javascript"></script>

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
<script src="${resource(dir: 'js/ui', file: 'jquery.ui.tabs.js')}"></script>


<script src="${resource(dir: 'js', file: 'jquery.ratings.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.tipsy.js')}"></script>

<script type="text/javascript"
	src="${resource(dir: 'js', file: 'xbreadcrumbs.js')}"></script>
	 <ckeditor:resources/>

<style type="text/css">
span.reference {
	position: fixed;
	left: 0px;
	bottom: 0px;
	background: #000;
	width: 100%;
	font-size: 10px;
	line-height: 20px;
	text-align: right;
	height: 20px;
	-moz-box-shadow: -1px 0px 10px #000;
	-webkit-box-shadow: -1px 0px 10px #000;
	box-shadow: -1px 0px 10px #000;
}

span.reference a {
	color: #aaa;
	text-transform: uppercase;
	text-decoration: none;
	margin-right: 10px;
}

span.reference a:hover {
	color: #ddd;
}

#banner-name {
	font-family: 'Yesteryear', cursive;
    font-size: 40px;
	color: #333;
	text-transform: capitalize;
	text-shadow: 4px 4px 4px #aaa;
	font-weight: bold;
	margin-left: 10px;
}

#tagline {
	color: #336699;
	font-size: 10px;
	text-transform: uppercase;
	margin-left: 10px;
}

</style>

<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div id="wrap" style="box-shadow: 0 10px 30px -4px #000;">

		<!-- Header -->
		<div id="header">
			<div id="logo" class="logo">
				<a href="/webstore">
					<img
						src="${resource(dir: 'images/site', file: 'logo.png')}" alt="" title="" border="0" />
				</a>
			</div>
			
			<div id="user">
				<span class="division"> <sec:ifNotLoggedIn>
						<i class="icon-user icon-large"></i>
						<span id="topnav" class="topnav" style="margin: 0px;"> <g:link
								class="signin user" controller="login" action="auth">
								<span>Sign in</span>
							</g:link>
							<fieldset id="signin_menu"></fieldset>
						</span>
						
						<span style="color:#222;">or</span>
						
						<span id="topnav" class="topnav" style="margin: 0px;"> 
							<g:link controller="register" action="index">
								<span>Register</span>
							</g:link>
							<fieldset id="signin_menu"></fieldset>
						</span>
						
					</sec:ifNotLoggedIn>
					<sec:ifLoggedIn>
						   Welcome <sec:username />
					</sec:ifLoggedIn>
				</span> 
				<span class="sep">|</span> <span class="division"> <g:link
						controller="wishList" action="showWishList">
						<span>Wish List</span>
						<span id="wishListItems"></span>
					</g:link>
				</span> 
				<span class="sep">|</span> <span class="division"> <g:link
						class="user" controller="shoppingCart" action="showCart">
						<i class="icon-shopping-cart icon-large"></i>
						<span>Basket</span>
					</g:link>
				</span> <span class="sep">|</span> <span id="logout" class="division">
					<span class="logout_icon"></span> <sec:ifLoggedIn>
						<g:link controller="logout" class="user">Log out</g:link>
					</sec:ifLoggedIn>
				</span>

				<sec:ifAnyGranted roles="ROLE_ADMIN">
					<span class="sep">|</span>
					<span class="division"> <a href="#"> <span>Site
								Administration</span>
					</a>
					</span>
				</sec:ifAnyGranted>
				<br/>
				
				<hr/>
				
				
				<div style="float: right;line-height: 10px;font-weight: bold;font-size: 15px;color: #0F3B5F;">
					 <span>LiveChat</span>
					 <span class="sep">|</span>
					 <span>+91-9833821291</span> 
					 <span class="sep">|</span>
					 <span>24-7</span>
				</div>
			</div>
		</div>

		<!-- Menu Bar -->
		<g:render template="/common/menu"></g:render>
		<img src="${resource(dir: 'images/', file: 'bottom_shadow.png')}" style="width:100%;height:10px;margin-top: -10px;">
		<!-- Menu Bar -->
		
		<!-- Main Content -->
		<div id="page-content">
			<div id="spinner" class="spinner" style="display: none;">
				<g:message code="spinner.alt" default="Loading&hellip;" />
			</div>
			<div id="page" class="">
				<div id="page-inner">
					<!-- Search Box -->
					<br />
					<div id="searchBar">
						<div style="float: left;">
							<h1 class="page-title" style="">
								<g:if test="${!params.admin}">
									Free Shipping with every order.
								</g:if>
							</h1>
						</div>
						<div style="float: right; margin-right: 50px; height: 30px;">
							<g:form method="POST">
								<g:textField name="productSearchQuery" />
								<g:submitButton name="search" value="Search" class="button" />
							</g:form>
						</div>
					</div>
					<hr />
					<!-- Search Box -->

					<g:layoutBody />
					
					<div class="tencol" style="background-color: #FAFAFA; margin-right:-5px;width: 98%;">
					
					<img src="${resource(dir: 'images/', file: 'bottom_shadow.png')}" style="width:100%;height:5px;margin-top: -10px;">
					<br/>
					
					<ul id="logos" style="border:0px;">
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'FedEx.png')}">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'GIA.png')}" >
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'gii.png')}" >
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'IGI.png')}">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'paypal.png')}" >
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'speedpost.png')}">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'usps.png')}" >
								</a>
							</li>
							<li>
								<a href="#">
									<img src="${resource(dir: 'images/footer', file: 'facebook.png')}" >
								</a>
							</li>
						</ul>				
						<img src="${resource(dir: 'images/', file: 'bottom_shadow.png')}" style="width:100%;height:5px;margin-top: -10px;">
					<br/>
				</div>
				
				

				</div>

			</div>
		</div>
		
		

		<div id="footer" class="shadow">
			<div class="row" style="text-align: center;">
				<div class="twocol" style="margin:2px;margin-left:80px; width: 15%">
				<div id="footertitle" style="font-size:15px;"><b>More Information</b></div>
					<ul style="border-left:1px dotted #B5B5B5 ">
					     
						<li style="margin-top: 20px"><g:link controller="Footer" action="whybuyfromus">Why Buy From Us</g:link></li>
						<li><g:link controller="Footer" action="gemcertification">Gem Certification</g:link></li>
						<li><g:link controller="Footer" action="gemcare">Gem Care</g:link></li>
						<li><g:link controller="Footer" action="discountcoupons">Discount Coupons</g:link></li>
						<li><g:link controller="Footer" action="productimages">Product Images</g:link></li>
						<li><g:link controller="Footer" action="warrantyguarantee">Warranty Guarantee</g:link></li>
						<li><g:link controller="Footer" action="jewelleryguide">Jewellery Guide</g:link></li>
						<li><g:link controller="Footer" action="shoppingguide">Shopping Guide</g:link></li>
						<li><g:link controller="Footer" action="education">Education</g:link></li>
						<li><g:link controller="Footer" action="newsletters">Newsletters</g:link></li>
						
						
					</ul>
				</div>

				<div class="twocol" style="margin:2px;">
				<div id="footertitle" style="font-size:15px"><b>Navigation</b></div>
					<ul>
						<li style="margin-top: 20px"><a href="/webstore">Home</a></li>
						<li><g:link controller="Footer" action="aboutus">About Us</g:link></li>
						<li><g:link controller="Footer" action="paymentnshipping">Payment & Shipping</g:link></li>
						<li><g:link controller="Footer" action="returnsnexchanges">Returns & Exchanges</g:link></li>
						<li><g:link controller="Footer" action="privacynotice">Privacy Notice</g:link></li>
						<li><g:link controller="Footer" action="legalnotice">Legal Notice</g:link></li>
						<li><g:link controller="Footer" action="sitemap">Site Map</g:link></li>
					</ul>
				</div>

				<div class="twocol" style="margin:2px;">
				<div id="footertitle" style="font-size:15px"><b>Customer Service</b></div>
					<ul>
						<li style="margin-top: 20px"><g:link controller="Footer" action="freeshippingworldwide">Free Shipping Worldwide</g:link></li>
						<li><g:link controller="Footer" action="noriskreturnpolicy">No Risk Return Policy</g:link></li>
						<li><g:link controller="Footer" action="expertguidance">Expert Guidance</g:link></li>
						<li><g:link controller="Footer" action="aftersalesservice">After Sales Service</g:link></li>
						<li><g:link controller="Footer" action="miscellaneous">Miscellaneous</g:link></li>
					</ul>
				</div>

				<div class="twocol" style="margin:2px;">
				<div id="footertitle" style="font-size:15px"><b>FAQ’s</b></div>
					<ul>
						<li style="margin-top: 20px"><g:link controller="Footer" action="faqsecurity">Security</g:link></li>
						<li><g:link controller="Footer" action="faqpaymentnshipping">Payment & Shipping</g:link></li>
						<li><g:link controller="Footer" action="faqreturnsnexchanges">Returns & Exchanges</g:link></li>
						<li><g:link controller="Footer" action="faqmiscellaneous">Miscellaneous</g:link></li>
					</ul>
				</div>

				<div class="twocol" style="margin:2px;">
				<div id="footertitle" style="font-size:15px"><b>Articles</b></div>
					<ul>
						<li style="margin-top: 20px"><a href="/webstore/gemstone/list?productTypeId=3">Rubies</a></li>
						<li><a href="/webstore/gemstone/list?productTypeId=11">Emeralds</a></li>
						<li><a href="/webstore/gemstone/list?productTypeId=8">Sapphires</a></li>
						<li><a href="/webstore/diamond/list">Diamonds</a></li>
						<li><a href="#">Jewelry</a></li>
					</ul>
				</div>
				
				<div class="twocol" style="margin:2px;">
				<div id="footertitle" style="font-size:15px"><b>Contact Us</b></div>
					<ul>
						<li style="margin-top: 20px">Email : <a href="mailto:ricchroyall@yahoo.com">ricchroyall@yahoo.com</a></li>
						<li>Phone : <a href="#">+91-9833821291 </a></li>
						<li><a href="#">Live Chat</a></li>
					</ul>
				</div>
			</div>
			<div class="tencol" style="background-color: #FAFAFA; margin-left:-2px;width: 100%; height: 20px">
							
					<ul id="sitemaps" style="border:0px; text-align: center;" >
						<li style="border: 0px;">
							site map :
						</li>
						<li>
							<a href="<g:createLink controller="gemstone" action="list" />">
								gemstones
							</a>
						</li>
						
						<li>
							<a href="#">
								jewelry
							</a>
						</li>
						
						<li>
							<a href="<g:createLink controller="diamond" action="list" />">
								diamonds
							</a>
						</li>
						
						<li>
							<a href="#">
								build your own jewelry
							</a>
						</li>
						
						<li>
							<a href="#">
								gifts
							</a>
						</li>
						
						<li>
							<a href="#">
								education
							</a>
						</li>
						
						<li>
							<a href="#">
								sale
							</a>
						</li>
					</ul>		
				</div>
				
			</div>
			<div>
					<p align="center">	© 2007-2011 <a href="www.Rubyandgems.com"><b>Rubyandgems.com</b></a>™ | All Rights Reserved | Rubyandgems.com is the online property of Hina's Creations  based in Mumbai, India.
</p>
				</div>
		</div>


			

		<script type="text/javascript">
			$(function() {
				var $oe_menu = $('#oe_menu ');
				var $oe_menu_items = $oe_menu.children('li');
				//var $oe_overlay		= $('#oe_overlay');

				$oe_menu_items
						.bind(
								'mouseenter',
								function() {
									var $this = $(this);
									$this.addClass('slided selected');
									$this
											.children('div.oe_menu_content')
											.css('z-index', '9999')
											.stop(true, true)
											.slideDown(
													200,
													function() {
														$oe_menu_items
																.not('.slided')
																.children(
																		'div.oe_menu_content')
																.hide();
														$this
																.removeClass('slided');
													});
								}).bind(
								'mouseleave',
								function() {
									var $this = $(this);
									$this.removeClass('selected').children(
											'div.oe_menu_content').css(
											'z-index', '1');
								});

				$oe_menu.bind('mouseenter', function() {
					var $this = $(this);
					//$oe_overlay.stop(true,true).fadeTo(200, 0.6);
					//$this.addClass('hovered');
				}).bind('mouseleave', function() {
					var $this = $(this);
					//$this.removeClass('hovered');
					//$oe_overlay.stop(true,true).fadeTo(200, 0);
					$oe_menu_items.children('div.oe_menu_content').hide();
				})
			});
		</script>

		<g:javascript library="application" />
		<script>
			function loadWishListLink() {
				$
						.ajax({
							type : 'GET',
							async : true,
							url : "<g:createLink controller='wishList' action='ajaxGetWishListItemCount' />",
							success : function(data) {
								$('#wishListItems').html("(" + data + ")");
							}
						});
			}
		</script>

		<script type="text/javascript">
			$(document).ready(function() {
				loadWishListLink();

				$(".signin").click(function(e) {
					e.preventDefault();
					$.ajax({
						type : 'GET',
						url : "<g:createLink controller='login' action='authAjax' />",
						success : function(data) {
								$('#signin_menu').html(data);
								$("fieldset#signin_menu").toggle();
								$(".signin").toggleClass("menu-open");
								(function() {
									document.forms['loginForm'].elements['j_username'].focus();
								})();
							}});
						});

						$("fieldset#signin_menu").mouseup(function() {
							return false
						});

						$(document).mouseup(
							function(e) {
								if ($(e.target).parent("a.signin").length == 0) {
									$(".signin").removeClass("menu-open");
									$("fieldset#signin_menu").hide();
								}
						});
				});
		</script>
		
		<script type='text/javascript'>
			$(function() {
				$('#forgot_username_link').tipsy({
					gravity : 'w'
				});
			});
		</script>
		<r:layoutResources />
	</div>


</body>
</html>