<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Gemstone</title>
<script type="text/javascript">
$(document).ready(function() {
    setupGridAjax();
});
 
// Turn all sorting and paging links into ajax requests for the grid
function setupGridAjax() {
    $("#grid").find(".pager a, th.sortable a").live('click', function(event) {
        event.preventDefault();
        var url = $(this).attr('href');
 
        var grid = $(".ajax");
        $(grid).html($("#spinner").html());
 
        $.ajax({
            type: 'GET',
            url: url,
            success: function(data) {
                $(grid).html(data);
            }
        })
    });
}
</script>
</head>
<body>
	<div class="row">
		<div class="left threecol product-filter">
			<h1 class="filter-heading">Narrow Results</h1>

			<hr />

			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<br /> <br /> <br />
		</div>

		<!--
			margin-left: -2.5em; : Provides more space in the list area 
		 -->
		<div class="right eightcol product-list-wrapper" style="margin-left: -2.5em;">
			<h1 class="page-title">
				Featured Gemstones
			</h1>
			
			<div id="grid">
	            <g:render template="grid" model="model" />
	        </div>
		</div>
	</div>
</body>
</html>