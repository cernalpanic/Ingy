var i = 100,
    num = "<%= @math_ladder.number %>";

$('.square').css('background-color', 'lightgray');

$('.square').each(function() {
  if (i <= num) {
    $(this).css('background-color', 'green');
  }
  i = i - 1;
});
