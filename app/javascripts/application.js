//= require <jquery>
//= require <jquery.qtip>

$(function() {
  
  $('table tr:odd').addClass('alt');

  $('#items').each(function() {
    $('td.amount', $(this)).formatAmount();
  });

  $('[data-tooltip]').each(function() {
    $(this).qtip({
      content: '<pre>' + $(this).attr('data-tooltip') + '</pre>',
      style: {
        width: 700,
        padding: 5,
        border: {
          width: 5,
          radius: 2,
          color: '#ccc'
        },
        tip: 'topLeft',
        name: 'light'
      },
      position: {
        corner: {
          target: 'bottomMiddle',
          tooltip: 'topLeft'
        }
      }
    });
  });

});