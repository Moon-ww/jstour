<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
	
	
   			 <div class="allt" style="margin-left:200px; width:800px;">
    			<form name="terms" id="terms" action="singup.do">
    				<br><br><h1>이용약관</h1><br><br><br>
    				<input type="checkbox" name="allagree" id="allagree" value="y"> <span class="allc">모든 약관에 동의합니다</span>
    				<br><br>
					<textarea style="padding:18px; width:500px; height:130px;">
여러분을 환영합니다.네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
					</textarea>
					<br><br>
                	<div class="agrbox">
                	<input type="checkbox" name="agree" id="agree" value="y" class="normal"> 쇼핑몰 이용약관 동의 (필수)
                	<p id="agr"></p>
                	</div>
                	<br><br>
                <textarea style="padding:18px; width:500px; height:130px;">
개인정보보호법에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
               </textarea>
               <br><br>
               <div class="agrbox">
                <input type="checkbox" name="agree2" id="agree2" value="y" class="normal"> 개인정보 수집 및 이용 동의 (필수)
                	<p id="agr2"></p>
                	</div>
                	<br><br>
                <div style="margin:30px 0 50px 170px;">
                <button type="button" class="btn btn-default" id="btn_ok">확인</button>
				<button type="button" class="btn btn-default" onclick="javascript:history.back();">취소</button>
               </div>
                </form>
                 </div>
                 
                 
                 <script>
                 $("#btn_ok").on("click", function() {
     				if($("#agree").is(":checked") == false) {
     					$("#agr").html("<span style='color:red;'>모든 약관에 동의해 주세요.</span>")
     					return false;
     				}
     				if($("#agree2").is(":checked") == false) {
     					$("#agr2").html("<span style='color:red;'>모든 약관에 동의해 주세요.</span>")
     					return false;
     				}
     				location.href='join.do';
             	})
                 </script>
                 
                 <script>
                 $(".allt").on("click", "#allagree", function () {
                	  var checked = $(this).is(":checked");

                	  if(checked){
                	  	$(this).parents(".allt").find('input').prop("checked", true);
                	  } else {
                	  	$(this).parents(".allt").find('input').prop("checked", false);
                	  }
                	});
                 </script>
                 <script>
                 $(".allt").on("click", ".normal", function() {
                	    var is_checked = true;

                	    $(".allt .normal").each(function(){
                	        is_checked = is_checked && $(this).is(":checked");
                	    });

                	    $("#allagree").prop("checked", is_checked);
                	});
                 </script>