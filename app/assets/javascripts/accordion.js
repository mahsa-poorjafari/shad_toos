function slideSwitch() {
  var AccordionBox = $('.AccordionBox ul li.active');
  AccordionBox.removeClass('active');
  var nextone = (AccordionBox.parent().next().children(':first').length == 0) ? $('.AccordionBox ul li:first') : AccordionBox.parent().next().children(':first')
  nextone.addClass('active');
}
  
$(function() { 
  setInterval("slideSwitch()",3000);
});



