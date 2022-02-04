<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>내 쇼핑몰</title>

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/summernote.min.css" rel="stylesheet">
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/product.js"></script>
	<script src="/resources/js/summernote.min.js"></script>
	<script src="/resources/js/my.js"></script>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
 <%--  <c:if test="${adminok ne 'admin' }">
	<script>
			alert("비정상적인 접근 입니다");
			location.href="main.do"
	</script>
	</c:if> --%>
<body>
		<header>
			
		</header>
				<div class="nav sidenav">
				<h1 style="align:center; color:#fff; margin:10px 0 50px 10px">관리자 페이지</h1>
					<ul>
						<li><a href="/adm/admin.do"><i class="fa fa-gift" style="width:25px;"></i> 상품관리</a></li>
						<li><a href="/adm/order/orderlist"><i class="fa fa-credit-card" style="width:25px;"></i> 주문관리</a></li>
						<li><a href="/adm/adminmemberlist"><i class="fa fa-user" style="width:25px;"></i> 회원관리</a></li>
						<li><a href="/adm/adminqnalist"><i class="fa fa-quora" style="width:25px;"></i> 질문답변</a></li>
						<li><a href="/adm/sales_status"><i class="fa fa-bar-chart" style="width:25px;"></i> 매출현황</a></li>
						<li><a href="#" onclick="document.getElementById('logout-form').submit();">
						<i class="fa fa-sign-out" style="width:25px;"></i>로그아웃</a></li>
						<!--  <li><a href="adminlogout.do"><i class="fa fa-sign-out" style="width:25px;"></i> 로그아웃</a></li>-->
						<li><a href="/"><i class="fa fa-fw fa-home" style="width:25px;"></i> 홈</a></li>
					</ul>
					<form id="logout-form" action='<c:url value='/adm/adminlogout'/>' method="POST">
   						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/></form>
				</div>
				
