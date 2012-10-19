$(function() {
    Common.initExternalLinks();
    Interface.initialize();
});
var Interface = function() {
    var _this;
    return {
        initialize: function() {
            _this = this;
            this.initNav();
			this.initJscroll();
        },
        initNav: function() {
            $('#nav a, a.nav').click(function() {
                var $this = $(this),
                    iTop = $($this.attr('href')).offset().top;
                $('html, body').animate({scrollTop: iTop}, 500);
                return false;
            });
        },
		initJscroll: function() {
			$('[data-ui="jscroll-default"]').jscroll();
		}
    };
}();