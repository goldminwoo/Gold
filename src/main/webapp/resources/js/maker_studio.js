/**
 * 	MakerStudio.js
 */
/*바깥 탭메뉴*/
$(document).ready(function(){
   
  $('ul.tabs li').click(function(){
    var tab_id = $(this).attr('data-tab');
 
    $('ul.tabs li').removeClass('current');
    $('.tab-content').removeClass('current');
 
    $(this).addClass('current');
    $("#"+tab_id).addClass('current');
  })
 
})
/*안쪽 텝매뉴*/
$(document).ready(function(){
   
  $('ul.fundtabs li').click(function(){
    var fundtab_id = $(this).attr('data-tab');
 
    $('ul.fundtabs li').removeClass('current');
    $('.fundtab-content').removeClass('current');
 
    $(this).addClass('current');
    $("#"+fundtab_id).addClass('current');
  })
 
})
