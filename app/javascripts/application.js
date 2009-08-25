//= require <jquery>
//= require <jquery.text-overflow>

$(function() {
  
  $('table tr:odd').addClass('alt');

  $('#items').each(function() {
    
    $('th', $(this)).ellipsis({ shim: 5, precision: 5 });

    $('td.amount', $(this)).formatAmount();

  });

});