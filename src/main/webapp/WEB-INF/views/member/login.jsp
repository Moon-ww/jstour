<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.net.URLEncoder" %>
	<%@ page import="java.security.SecureRandom" %>
	<%@ page import="java.math.BigInteger" %>
	<%@include file="../header.jsp" %>
	
	<%
		    String clientId = "H0HyQVmGZZFroPOwt8CI";//애플리케이션 클라이언트 아이디값";
		    String redirectURI = URLEncoder.encode("http://localhost:1234/shop/navercallback.do", "UTF-8");
		    SecureRandom random = new SecureRandom();
		    String state = new BigInteger(130, random).toString();
		    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
		    apiURL += "&client_id=" + clientId;
		    apiURL += "&redirect_uri=" + redirectURI;
		    apiURL += "&state=" + state;
		    session.setAttribute("state", state);
		 %>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		    <div class="col-md-7 newitem" style="margin:0 0 0 200px;">
		    	<h2 style="margin:100px 0 100px 300px;">로그인</h2>
		    	<form class="form-horizontal" name="frm" id="frm" method="post" action="/login">
		    	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
					  <div class="form-group">
					    <label for="userid" class="col-sm-2 control-label">아이디</label>
					    <div class="col-sm-10">
					      <input type="text" name="username" class="form-control" id="userid" placeholder="아이디입력">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="userpwd" class="col-sm-2 control-label">비밀번호</label>
					    <div class="col-sm-10">
					      <input type="password" name="password" class="form-control" id="userpwd" placeholder="비밀번호입력">
					    </div>
					  </div>
					  <div class="logincheck" style="color:red; margin:0 0 20px 200px;height:20px;">
					  <input type="hidden" id="ddd" class="btn btn-default" value="${msg }">
					  <span id="ccc">${msg }</span>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:0 0 100px 200px;">
					      <input type="submit" id="login" class="btn btn-default" value="로그인">
					      <button type="button" class="btn btn-default" onclick="location.href='join.do'">회원가입</button>
					      <button type="button" class="btn btn-default" onclick="location.href='findidpw.do'">아이디/비밀번호 찾기</button>
					     	<!-- 카카오 로그인 추가 -->
							<div id="kakaoLogin" style="margin:10px 0 0 0;">
							    <a href="javascript:kakaoLogin();"><img src="/resources/images/kakao_login.png" alt="카카오계정 로그인" style="width: 150px;"/></a>
							</div>
					    </div>
					  </div>
					</form>
    </div>
	<!-- <script type="text/javascript">
		$("#login").on("click", function(e) {
			var msg = $("#ddd").val();
			$("#ccc").html(msg)
		})
	</script> -->
  <script>
  document.cookie = "safeCookie1=foo; SameSite=Lax"; 
  document.cookie = "safeCookie2=foo";  
  document.cookie = "crossCookie=bar; SameSite=None; Secure";
  
window.Kakao.init('82d8eac10a5fdd6fe0bb1e404e6e6e15'); 
function kakaoLogin() { 
	window.Kakao.Auth.login({ 
	scope: 'profile_nickname, profile_image, account_email, gender, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다. 
	success: function(response) { 
		console.log(response) // 로그인 성공하면 받아오는 데이터 
		window.Kakao.API.request({ // 사용자 정보 가져오기 
		url: '/v2/user/me', 
		success: (res) => { 
			const kakao_account = res.kakao_account;
			console.log(kakao_account);
			var kakaoid = kakao_account.email;
			var name = kakao_account.profile.nickname;
			var email = kakao_account.email;
			var password = "1234";
			
			$.ajax({
				type : "post",
				url : 'memberIDcheck.do', // ID중복체크를 통해 회원가입 유무를 결정한다.
				data : {"id":kakaoid},
				success : function(result){
					if(result==1){
						// 존재하는 경우 로그인 처리
						createHiddenLoginForm(kakaoid);
						
					} else{
						// 회원가입
						$.ajax({
							type : "post",
	    					url : 'kakaojoinpro.do',
	    					data : {"id":kakaoid,
	    						    "name":name,
	    						    "email":email,
	    						    "password":password},
	    					success : function(result){
	    						if(result){
	    							// 로그인
	    							createHiddenLoginForm(kakaoid);
	    							alert('로그인 성공. 회원정보수정에서 1234 를 입력하고 \n필요한 정보를 추가 해주세요.');
	    						} else {
	    							alert('카카오 회원가입 실패. 일반계정으로 로그인하시기 바랍니다.');
	    						}
	    					},
	    					error: function(request, status, error){
	    		                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	    		                }
						});
					}						
				},
				error: function(request, status, error){
	                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	                }
			});
        }
    });
	 //window.location.href='login_form.do' //리다이렉트 되는 코드 
	}, fail: function(error) { 
		console.log(error);
		} 
	});
} 
function createHiddenLoginForm(kakaoid){
	
	var frm = document.createElement('form');
	frm.setAttribute('method', 'post');
	frm.setAttribute('action', 'login.do');
	var hiddenInput = document.createElement('input');
	var hiddenInput2 = document.createElement('input');
	hiddenInput.setAttribute('type','hidden');
	hiddenInput.setAttribute('name','userid');
	hiddenInput.setAttribute('value',kakaoid);
	hiddenInput2.setAttribute('type','hidden');
	hiddenInput2.setAttribute('name','userpwd');
	hiddenInput2.setAttribute('value','1234');
	frm.appendChild(hiddenInput);
	frm.appendChild(hiddenInput2);
	document.body.appendChild(frm);
	frm.submit();
	
}
	</script>
<%@include file="../footer.jsp" %>