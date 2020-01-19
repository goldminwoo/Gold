/**
 * like.js
 */
(function( $ ) {
    "use strict";
    $(function() {
        function animated_contents() {
            $(".zt-skill-bar > div ").each(function (i) {
                var $this  = $(this),
                    skills = $this.data('width');

                $this.css({'width' : skills + '%'});

            });
        }
        
        if(jQuery().appear) {
            $('.zt-skill-bar').appear().on('appear', function() {
                animated_contents();
            });
        } else {
            animated_contents();
        }
    });
}(jQuery));

//관심좋아요 버튼 누르면 오른쪽에 숫자올라감.
$(function(){
	   $('.button_up0').click(function(){
	      var c=$('.button_up0').index(this);
	      var likecount=$(".likecount:eq("+c+")").val();
	      likecount=$(".likecount:eq("+c+")").val(likecount*1+1);
	      $button_up0 = $('.button_up0').attr('disabled', true);
	   });
	})
	
	
	
	
	
	