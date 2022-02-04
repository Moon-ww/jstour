<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            
    <div class="col-md-9 newitem">
    	<h2 style="padding-left:50px; margin:40px 0 40px 0">회원정보수정</h2>
    	<form class="form-horizontal" name="frm" method="post" action="membermodifypro.do">
					  <div class="form-group">
					    <label for="id" class="col-sm-2 control-label">아이디</label>
					    <div class="col-sm-10">
					      <input type="text" name="id" class="form-control" id="id" placeholder="아이디입력" value="${member.id }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="password" class="col-sm-2 control-label">비밀번호</label>
					    <div class="col-sm-10">
					      <input type="password" name="pwd" class="form-control" id="pwd" placeholder="비밀번호입력">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="passwordcheck" class="col-sm-2 control-label">비밀번호 확인</label>
					    <div class="col-sm-10">
					      <input type="password" name="pwdcheck" class="form-control" id="pwdcheck" placeholder="비밀번호 확인">
					      <span id="pwcheck" style="display:inline-block; color:red;"></span>
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="name" class="col-sm-2 control-label">이름</label>
					    <div class="col-sm-10">
					      <input type="text" name="name" class="form-control" id="name" placeholder="이름입력" value="${member.name }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="email" class="col-sm-2 control-label">이메일</label>
					    <div class="col-sm-10">
					      <input type="text" name="email" class="form-control2" id="email"  value="${member.email }" style="width:50%;">
					      <input type="button" class="zip" value="인증메일받기" id="btn_email" style="width:15%;">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="email" class="col-sm-2 control-label">인증번호 입력</label>
					    <div class="col-sm-10">
					      <input type="text" name="cn" id="cn" class="form-control2" style="width:300px;">
					      <input type="button" value="확인" id="btn_ok" class="zip">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="zip_num" class="col-sm-2 control-label">우편번호</label>
					    <div class="col-sm-10">
					       <input id="member_post"  type="text" name="zip_num" class="form-control2" value="${member.zip_num }" readonly>
					       <input type="button" value="우편번호 찾기" class="zip" onclick="findAddr()"/><br><br>
							  <input id="member_addr" type="text" name="address1" placeholder="지번 또는 도로명 주소" class="form-control" value="${member.address1 }"> <br>
							  <input type="text" name="address2" placeholder="나머지주소" class="form-control" value="${member.address2 }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-sm-2 control-label">전화번호</label>
					    <div class="col-sm-10">
					      <input type="text" name="phone" class="form-control" id="phone" placeholder="전화번호입력" value="${member.phone }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:0 0 100px 500px;">
					      <button type="submit" class="btn btn-default">회원정보 수정</button>
					      <button type="reset" class="btn btn-default" onclick="javascript:history.back()">취소</button>
					    </div>
					  </div>
					</form>
    </div>
    <script>
			//email 인증
			$("#btn_email").on("click", function() {
				var email = $("#email").val();
				
				if(email=="") {
					alert("이메일 주소를 입력하세요");
					$("#email").focus();
				}else {
					$.ajax({
						type:'post',
						url:"emailsend.do",
						data:{email:email},
						dataType:"json",
						success:function(data) {
							alert(data.msg);
						},error:function() {
							alert("통신에러");
						}
					})//ajax
				}
			})
			//인증확인
			 $("#btn_ok").on("click",function() {
            var certinumber = $("#cn").val();
            //입력받은 인증번호
            if(certinumber == "") {
               alert("인증번호 입력하세요");
               $("#cn").focus();
            }else{
               $.ajax({
                  type:"post",
                  data:{"cn":certinumber},
                  //mypage.do로 넘겨주는 데이터값
                  url:"cncompare.do",
                  dataType:"json",
                  //서버에서 넘어오는 데이터 형식 JSON {name:"value"}
                  success:function(data) {
                     alert(data.msg);
                     if(data.check == "ok") {
                        //location.href="memberupdate.do"; <= java스크립트방식
                        //$(location).attr("href","memberupdate.do")//get방식
                     }
                  },error:function() {
                     alert("통신에러")
                  }
               })
            }
         })
         
	</script>
	<script>
	$("#pwdcheck").blur(function() {
		var pwd = $("#pwd").val();
		var pwdcheck = $("#pwdcheck").val();
		if(pwd != pwdcheck) {
			$("#pwcheck").html("비밀번호가 맞지않습니다")
		} 
	})
	</script>
    	<%@include file="../footer.jsp" %>