function slideSwitch() {
  if (window.DisableAccordionBox)
    return
  
    var AccordionBox = $('.AccordionBox ul li.active');
    AccordionBox.removeClass('active');
    var nextone = (AccordionBox.parent().next().children(':first').length == 0) ? $('.AccordionBox ul li:first') : AccordionBox.parent().next().children(':first');
    nextone.addClass('active');
  
}
  
$(function() {   
  setInterval("slideSwitch()",3000);
});


$( document ).ready(function() {
  $('ul.slider-boxes a').click(function(){
    var BoxClass = $(this).attr("class");   
    $('.AccordionBox ul li').removeClass('active');    
    $('.AccordionBox ul li#'+ BoxClass).addClass('active');
  });
});  
    
   
    
  
    
  
