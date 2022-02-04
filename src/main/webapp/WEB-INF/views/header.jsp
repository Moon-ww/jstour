<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
	<%@ page import="org.springframework.security.core.Authentication" %>
	
	<%
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Just Smile</title>

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/summernote.min.css" rel="stylesheet">
    
	<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">    
    <link href="https://unpkg.com/swiper@7/swiper-bundle.min.css" rel="stylesheet"/>
    
    
    <link href="/resources/css/common.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <link href="/resources/css/sub.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/summernote.min.js"></script>
    <script src="/resources/js/my.js"></script>
    <script src="/resources/js/member.js"></script>
    <script src="/resources/js/mypage.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://kenwheeler.github.io/slick/slick/slick.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   <header id="header">
      <div class="header_middle">
         <div class="container-fluid">
            <div class="row">
            	<div class="col-md-1">
            	</div>
                <div class="col-md-10">
                  <ul class="nav navbar-nav pull-right mylogin">
                  <sec:authorize access="isAnonymous()">
                  <li><a href="/member/login">로그인</a></li>
                  <li><a href="/member/join.do">회원가입</a></li>
                  <li><a href="#">고객센터</a></li>
                  </sec:authorize>
                  <sec:authorize access="isAuthenticated()">
                  <li><a href="#" onclick="document.getElementById('logout-form').submit();">로그아웃</a></li>
                  <li><a href="#">고객센터</a></li>
                  <form id="logout-form" action='<c:url value='/adm/adminlogout'/>' method="POST">
   						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/></form>
                  </sec:authorize>
               </ul>
               </div>
               <div class="col-md-1">
            	</div>
            </div>
         </div>
      </div>
            	<!--  -->
          <div class="container-fluid">
            <div class="row">
            	<div class="col-md-1">
            	</div>
               <div class="col-md-2" style="height: 100px;">
               <h1 class="logo"><a href="/"><img src="/resources/images/jslogo.png" alt="" style="width:195px; height:100px; margin-top: -50px;"/></a></h1>
            </div>
            <div class="search_box col-md-4">
            <form name="search" id="search" method="get" action="productsearch.do">
            		<div class="searchform">
                        <input type="text" placeholder="검색어를 입력하세요" name="word">
                        <input type="hidden" name="pageNum" value="1">
						<input type="hidden" name="amount" value="10">
                        <a id="abc"><i class="fa fa-search"></i></a>
                     </div>
                     <!-- swiper슬라이더 메인컨테이너 -->
		<div class="swiper-container swiper2" style="width:150px; height: 26px; position: absolute; top:16px; left: 450px;">
		  <!-- 보여지는 영역 -->
		  <div class="swiper-wrapper sw2">
		  	<a href="#" class="swiper-slide" data-swiper-slide-index="0" style="height: 26px;">제주</a>
		    <a href="#" class="swiper-slide" data-swiper-slide-index="1" style="height: 26px;">서울</a>
		    <a href="#" class="swiper-slide" data-swiper-slide-index="2" style="height: 26px;">제주 렌터카</a>
		   </div>
		  <!-- 페이징 버튼 처리 -->
		  <!-- <div class="swiper-pagination"></div> -->
		
		  <!-- 방향 버튼 상황에 따라 추가 삭제가능 -->
		  <!-- <div class="swiper-button-prev"></div>
		  <div class="swiper-button-next"></div> -->
		</div>
                     </form>
                   </div>
                     <div class="col-md-4 mymy">
                     <ul class="nav navbar-nav pull-right">
                     <li class="dropdown">
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="/resources/images/mymenu.png" alt=""/><span class="caret"></span></a>
                         <ul class="dropdown-menu" role="menu" style="width: 190px;padding: 0px;margin: 0px;">
                         <sec:authorize access="isAnonymous()">
                         <li style="padding:10px; background: #c9c9c9;">마이메뉴는<br><span style="color: #007aff"> 회원전용</span> 메뉴 입니다.</li>
                         <li style="margin:10px;"><a href="/member/login"><span class="log">로그인</span></a></li>
                  		 <li style="margin:10px;"><a href="/member/join.do"><span class="log2">회원가입</span></a></li>
                         </sec:authorize>
                         <sec:authorize access="isAuthenticated()">
                         	<li style="padding:10px; background: #c9c9c9;"><span style="color: #007aff"><%=name %></span> 님, 반갑습니다</li>
							<li style="margin:10px;"><a href="mypage.do">예약내역</a></li>
							<li style="margin:10px;"><a href="orderall.do">찜</a></li>
							<li style="margin:10px;"><a href="qna.do?id=${loginuser.id }">마일리지</a></li>
							<li style="margin:10px;"><a href="/mypage/mypage.do">마이페이지</a></li>
							<li style="margin:10px;"><a href="mypage.do">1:1 게시판문의</a></li>
							<li style="margin:10px;"><a href="mypage.do">개인정보수정</a></li>
							</sec:authorize>
                         </ul>
                       </li>
                       <li><a href="cartlist.do"><img src="/resources/images/reservation.png" alt="예약내역"/></a></li>
                     	<li><a href="/adm/admin.do"><img src="/resources/images/zzim.png" alt="찜"/></a></li>
                    	<sec:authorize access="hasRole('ROLE_ADMIN')">
                    	</sec:authorize>
                  	</ul>
                     </div>
                     <div class="col-md-1">
            		 </div>
                  </div>
                </div>
            
      <div class="header_bottom">
         <div class="container-fluid">
            <div class="row" style="border-top:1px solid #ccc">
            	<div class="col-md-1">
            	</div>
               <div class="col-md-10 navheight">
                <div class="mainmenu pull-left myleft">
                   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                     <ul class="nav navbar-nav">
                       <li><a href="productlist.do?sel=4&pageNum=1&amount=10">서울 </a></li>
                       <li><a href="productlist.do?sel=1&pageNum=1&amount=10">제주</a></li>
                       <li><a href="productlist.do?sel=2&pageNum=1&amount=10">호텔/펜션</a></li>
                     </ul>
                   </div>
                </div>
               </div>
               <div class="col-md-1">
            	</div>
            </div>
         </div>
      </div>
      <script>
      var $dropdown = $(".navbar-nav .dropdown");

      var $dropdownToggle = $(".dropdown-toggle");

      var $dropdownMenu = $(".dropdown-menu");

      var showClass = "show";



      $(window).on("load resize", function() {

        if (this.matchMedia("(min-width: 768px)").matches) {

          $dropdown.hover(

            function() {

              var $this = $(this);

              $this.addClass(showClass);

              $this.find($dropdownToggle).attr("aria-expanded", "true");

              $this.find($dropdownMenu).addClass(showClass);

            },

            function() {

              var $this = $(this);

              $this.removeClass(showClass);

              $this.find($dropdownToggle).attr("aria-expanded", "false");

              $this.find($dropdownMenu).removeClass(showClass);

            }

          );

        } else {

          $dropdown.off("mouseenter mouseleave");

        }

      });

      </script>
      <script>
      	$("#abc").on("click", function(e) {
      		document.search.submit();
      	})
      </script>
      <script type="text/javascript">
	const swiper2 = new Swiper('.swiper2', {
    //기본 셋팅
    //방향 셋팅 vertical 수직, horizontal 수평 설정이 없으면 수평
    direction : 'vertical',
    //한번에 보여지는 페이지 숫자
    slidesPerView : 1,
    //페이지와 페이지 사이의 간격
    spaceBetween : 1,
    //드레그 기능 true 사용가능 false 사용불가
    debugger : true,
    //마우스 휠기능 true 사용가능 false 사용불가
    mousewheel : false,
    //반복 기능 true 사용가능 false 사용불가
    loop : true,
    //선택된 슬라이드를 중심으로 true 사용가능 false 사용불가 djqt
    centeredSlides : true,
    // 페이지 전환효과 slidesPerView효과와 같이 사용 불가
    // effect: 'fade',
    speed : 1000,
    //자동 스크를링
    autoplay : {
        //시간 1000 이 1초
        delay : 3500,
        disableOnInteraction : false,
    },
    //페이징
    pagination : {
        //페이지 기능
        el : '.swiper-pagination',
        //클릭 가능여부
        clickable : true,
    },
    //방향표
    navigation : {
        //다음페이지 설정
        nextEl : '.swiper-button-next',
        //이전페이지 설정
        prevEl : '.swiper-button-prev',
    },
});
</script>
 </header>
</body>
  