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

<div id="example9container" class="example">
  <div class="pad">
      <button name="load">Load</button>
      <button name="save">Save</button>
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
    rowHeaders: true,
    colHeaders: true,
    minSpareCols: 0,
    minSpareRows: 0,
    contextMenu: true,
   
     
  });
  var handsontable = $container.data('handsontable');

  $parent.find('button[name=load]').click(function () {
    $.ajax({
      url: "demo/json/load.json",
      dataType: 'json',
      type: 'GET',
      success: function (res) {
        handsontable.loadData(res.data);
        $console.text('Data loaded');
      }
    });
  });

  $parent.find('button[name=save]').click(function () {
    $.ajax({
      url: "diamondJsonGet",
      data: JSON.stringify(handsontable.getData()), 
      contentType : "text/plain",
      dataType: 'json',
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

  $parent.find('input[name=autosave]').click(function () {
    if($(this).is(':checked')) {
      $console.text('Changes will be autosaved');
    }
    else{
      $console.text('Changes will not be autosaved');
    }
  });
</script></pre>
  </div>
</div>

</body>
</html>
