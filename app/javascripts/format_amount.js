//= require <jquery>

$.fn.formatAmount = function(options) {

  options = $.extend({
  }, options || {});
  
  $(this).each(function() {
    
    var amount = parseFloat($(this).text());
    var formatted = null;
    var dollar = "<span class='dollar'>$</span>";
    var sign = (amount >= 0 ? '+' : '-');
    
    formatted = "<span class='sign'>" + sign + "</span>" + dollar + Math.abs(amount).toFixed(2);
    
    $(this).html(formatted);    
    
  });

}