$(function() {
	var total = function(n) {
		var price = $(".newitem .infomation p span").attr("class");
		var amount = $(".quantity").attr("value");
		var amount = parseInt(amount);
		var amount = amount + n;
		if(amount < 1) {
			amount = 1;
		}
		var tot = price * amount;
		
		$(".quantity").attr("value",amount);
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
		var tot = tot.toString().replace(regexp,',');
		$(".total").html("총 "+amount + "개 "+tot+" 원");
		
		}
		total(0);
		$(".plus").on("click",function() {
			total(1);
		});
		$(".minus").on("click",function(){
			total(-1);
		});
	})
