(function ($) {
  "use strict";
  /**
   * Handsontable ColHeader extension
   * @param {Object} instance
   * @param {Array|Boolean} [labels]
   */
  Handsontable.ColHeader = function (instance, labels) {
    var that = this;
    this.className = 'htColHeader';
    instance.blockedRows.main.on('mousedown', 'th.htColHeader', function () {
      instance.deselectCell();
      var $th = $(this);
      $th.addClass('active');
      that.lastActive = this;
      var index = $th.index();
      var offset = instance.blockedCols ? instance.blockedCols.count() : 0;
      instance.selectCell(0, index - offset, instance.rowCount - 1, index - offset, false);
    });
    instance.rootElement.on('deselect.handsontable', function () {
      that.deselect();
    });
    this.instance = instance;
    this.labels = labels;
    this.instance.colHeader = this;
    this.format = 'small';
    instance.blockedRows.addHeader(this);
  };

  /**
   * Return custom column label or automatically generate one
   * @param {Number} index Row index
   * @return {String}
   */
  Handsontable.ColHeader.prototype.columnLabel = function (index) {
    if (typeof this.labels[index] !== 'undefined') {
      return this.labels[index];
    }
    var dividend = index + 1;
    var columnLabel = '';
    var modulo;
    while (dividend > 0) {
      modulo = (dividend - 1) % 26;
      columnLabel = String.fromCharCode(65 + modulo) + columnLabel;
      dividend = parseInt((dividend - modulo) / 26);
    }
    return columnLabel;
  };

  /**
   * Remove current highlight of a currently selected column header
   */
  Handsontable.ColHeader.prototype.deselect = Handsontable.RowHeader.prototype.deselect;

  /**
   *
   */
  Handsontable.ColHeader.prototype.destroy = function () {
    this.instance.blockedRows.destroyHeader(this.className);
  };
})(jQuery);