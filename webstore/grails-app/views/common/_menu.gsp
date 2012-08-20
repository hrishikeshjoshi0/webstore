<script type="text/javascript">
	$(document).ready(function() {
	   		//Get Product Types.
		    $.ajax({
		        type: 'GET',
		        url: "<g:createLink controller='product' action='ajaxGetCategoryTypes' />" 
			        	+ "?productCategory=" + "gemstone"
			        	+ "&template=" + "/common/productTypeMenus",
		        success: function(data) {
		            $('#gemstoneSubLinks').html(data);
		        }
		    });

		    $.ajax({
		        type: 'GET',
		        url: "<g:createLink controller='product' action='ajaxGetCategoryTypes' />" 
			        	+ "?productCategory=" + "diamond"
			        	+ "&template=" + "/common/productTypeMenus",
		        success: function(data) {
		            $('#diamondSubLinks').html(data);
		        }
		    });
		    
	});
</script>
<div id="nav" class="clearfix">
	<div class="oe_wrapper">
		<!-- 
				<div id="oe_overlay" class="oe_overlay"></div>
				 -->
		<ul id="oe_menu" class="oe_menu">
			<!-- Gemstones -->
			<li>
				<a href="<g:createLink controller="gemstone" action="list" />">Gemstones</a>
				<div id="gemstoneSubLinks" class="oe_menu_content">
				</div>
			</li>

			<!-- Jewelry -->
			<li><a href="">Jewelry</a> <!-- -112px --> <!--  Add -111px for every next div. 
						<div class="oe_menu_content" style="left: -111px;">
						</div>
						 --></li>

			<!-- Diamonds -->
			<li>
				<a href="<g:createLink controller="diamond" action="list" />">Diamonds</a>
				<div id="diamondSubLinks" class="oe_menu_content">
				</div>
			</li>

			<!-- Build Your Own Jewelry -->
			<li><a href="">Build Your Own Jewelry</a></li>

			<!-- Gifts -->
			<li><a href="">Gifts</a></li>

			<!-- Education -->
			<li><a href="">Education</a></li>

			<!-- Sale -->
			<li><a href="">Sale</a></li>
		</ul>
	</div>
</div>