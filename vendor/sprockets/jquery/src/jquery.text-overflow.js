(function($) {
	$.fn.ellipsis = function(options){
	  
    options = $.extend({
      enableUpdating: false,
      shim: 0,
      precision: 1
    }, options || {});
	  
		var s = document.documentElement.style;
		if (!('textOverflow' in s || 'OTextOverflow' in s)) {
			return this.each(function(){
				var el = $(this);
				if(el.css("overflow") == "hidden"){
					var originalText = el.html();
					var w = el.width();
					
					var t = $(this.cloneNode(true)).hide().css({
                        'position': 'absolute',
                        'width': 'auto',
                        'overflow': 'visible',
                        'max-width': 'inherit'
                    });
					el.after(t);
					
					var text = originalText;
					
					var shim = 10;
					
					while(text.length > 0 && (t.width() + options.shim) > el.width()){
						text = text.substr(0, text.length - options.precision);
						t.html(text + "...");
					}
					el.html(t.html());
					
					t.remove();
					
					if(options.enableUpdating == true){
						var oldW = el.width();
						setInterval(function(){
							if(el.width() != oldW){
								oldW = el.width();
								el.html(originalText);
								el.ellipsis();
							}
						}, 200);
					}
				}
			});
		} else return this;
	};
})(jQuery);