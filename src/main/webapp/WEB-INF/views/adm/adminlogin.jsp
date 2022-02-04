<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Cookie[] cookie = request.getCookies();
    
    String id = "";
    
    if(cookie != null) {
    	for(int i=0; i<cookie.length;i++) {
    		if(cookie[i].getName().trim().equals("id")) {
    			System.out.println(cookie[i].getValue());
    			id=cookie[i].getValue();
    		}
    		
    	}
    }
    %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>내 쇼핑몰</title>

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/member.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
	<div class="container">
		<h2 style="margin:100px 0 50px 20px;">관리자 로그인</h2>
	<div class="col-md-6">
		<form class="form-horizontal" name="admin" method="post" action="/login">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
  <div class="form-group">
    <label for="id" class="col-sm-2 control-label">아이디</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="username" id="id" value="<%=id %>" placeholder="id">
    </div>
  </div>
  <div class="form-group">
    <label for="pwd" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" name="passpword" id="pwd" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    	<div class="checkbox">
    		<label for="">
    			<input type="checkbox" name="id_rem" <%if(id.length()>1) out.print("checked"); %> />아이디 기억하기
    		</label>
    	</div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">로그인</button>
    </div>
  </div>
</form>
	</div>
</div>
</body>
</html>