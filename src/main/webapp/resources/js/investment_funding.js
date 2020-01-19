/**
 *  investment_funding.js
 */
    $(document).ready(function(){
    	$(".checkbox").change(function(){
    		if($(".checkbox").is(":checked")){
    			$(".fundingOption").show();
    		}else{
    			$(".fundingOption").hide();
    		}
    	});
    });

    $(document).ready(function(){
    	$(".checkbox2").change(function(){
    		if($(".checkbox2").is(":checked")){
    			$(".fundingOption2").show();
    		}else{
    			$(".fundingOption2").hide();
    		}
    	});
    });
    
    $(document).ready(function(){
    	$(".checkbox3").change(function(){
    		if($(".checkbox3").is(":checked")){
    			$(".fundingOption3").show();
    		}else{
    			$(".fundingOption3").hide();
    		}
    	});
    });

    
    
    
    
    
    
    
    
    
  //수량체크 
    $(function(){
       $('.bt_up').click(function(){
          var num=$(".num").val();
          var snum=$("#fundingPrice2").val();
          var tnum=$("#fundingPrice").val();
          num=$(".num").val(Number(num)+1);
          tnum=Number(tnum);
          snum=Number(snum);
          $("#fundingPrice").val(snum+tnum);
       });
       $('.bt_down').click(function(){
    	   var num=$(".num").val();
           var snum=$("#fundingPrice2").val();
           var tnum=$("#fundingPrice").val();
           num=$(".num").val(Number(num)-1);
           tnum=Number(tnum);
           snum=Number(snum);
           $("#fundingPrice").val(tnum-snum);
       });
    });

/*    $(function(){
       $('.bt_up2').click(function(){
          var n=$('.bt_up2').index(this);
          var num=$(".num2:eq("+n+")").val();
          num=$(".num2:eq("+n+")").val(num*1+1);
       });
       $('.bt_down2').click(function(){
          var n=$('bt_down2').index(this);
          var num2=$(".num2:eq("+n+")").val();
          num2=$(".num2:eq("+n+")").val(num2*1-1);
       });
    });
    
    $(function(){
       $('.bt_up3').click(function(){
          var n=$('.bt_up3').index(this);
          var num=$(".num3:eq("+n+")").val();
          num=$(".num3:eq("+n+")").val(num*1+1);
       });
       $('.bt_down3').click(function(){
          var n=$('bt_down3').index(this);
          var num=$(".num3:eq("+n+")").val();
          num=$(".num3:eq("+n+")").val(num*1-1);
       });
    });*/