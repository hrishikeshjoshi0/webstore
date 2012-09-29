<%@ page import="com.openappengine.model.product.Diamond" %>
<!doctype html>
<html>
	<head>
		
		
		 <link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jquery.handsontable.css')}"
	type="text/css">
	 <link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jquery.contextMenu.css')}"
	type="text/css">
	
	<script src="${resource(dir: 'js/handsOnTable', file: 'jquery.min.js')}"></script>
	<script src="${resource(dir: 'js/handsOnTable', file: 'jquery.handsontable.js')}"></script>
	<script src="${resource(dir: 'js/handsOnTable', file: 'bootstrap-typeahead.js')}"></script>
	<script src="${resource(dir: 'js/handsOnTable', file: 'jquery.autoresize.js')}"></script>
	<script src="${resource(dir: 'js/handsOnTable', file: 'jquery.contextMenu.js')}"></script>
	<script src="${resource(dir: 'js/handsOnTable', file: 'jquery.ui.position.js')}"></script>
	</head>
	
	
	<body>
<p>
  <button name="load">Load</button>
  <button name="save">Save</button>
  <label><input type="checkbox" name="autosave" checked="checked" autocomplete="off"> Autosave</label>
</p>

<div id="example9console" class="console">Click "Load" to load data from server</div>

<div id="example9grid" class="dataTable"></div>

<script>
  var $container = $("#example9grid");
  var $console = $("#example9console");
  var $parent = $container.parent();
  var autosaveNotification;
  $container.handsontable({
    rows: 8,
    cols: 8,
    rowHeaders: false,
    colHeaders: false,
    minSpareCols: 0,
    minSpareRows: 0,
    contextMenu: true,
    
  });

  var handsontable = $container.data('handsontable');

  $parent.find('button[name=load]').click(function () {
    $.ajax({
      url: "diamondJsonGet/save.json",
      dataType: 'xml',
      type: 'GET',
      success: function (res) {
        handsontable.loadData(res.data);
        $console.text('Data loaded');
      }
    });
  });
 
  $parent.find('button[name=save]').click(function () {
	    $.ajax({
	      url: "diamondJsonGet/",
	      data: {"data": handsontable.getData()}, //returns all cells' data
	      dataType: 'xml',
	      type: 'POST',
	      success: function (res) {
	        if(res.result === 'ok') {
	          $console.text('Data saved');
	        }
	        else {
	          $console.text('Save error');
	        }
	      },
	      error: function () {
	        $console.text('Save error');
	      }
	    });
	  });

</script>
</div>
	</body>
</html>
