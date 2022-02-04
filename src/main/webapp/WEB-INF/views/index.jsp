<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ include file="header.jsp" %>
<!-- 이거 수정이 되나요?????? -->   
<section>
<div class="container-fluid">
	<div class="row mainvisual">
	<div class="col-md-4 ment" style="margin: 70px 0 0 110px; height: auto;">
			<p>고객님,<br><span style="font-weight: 600">어떤 여행을 꿈꾸시나요?</span></p>
			<input type="text" placeholder="어디로 떠나세요?" /><br>
			<button class="mbtn1">인천/김포 출발</button><button class="mbtn1">여행시작일 선택</button>
			<button class="mbtn3">패키지 검색</button>
	</div>
	<div class="col-md-6" style="margin: 50px 0 50px 0;">
		<!-- swiper슬라이더 메인컨테이너 -->
		<div class="swiper-container swiper1">
		  <!-- 보여지는 영역 -->
		  <div class="swiper-wrapper">
		    <!-- div class="swiper-slide" 를 추가하면된다 -->
		    <div class="swiper-slide">
		      <img src="/resources/images/z1.jpg" alt="." />
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z2.jpg" alt="." />
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z3.jpg" alt="." />
		    </div>
		    <div class="swiper-slide">
		      <img src="/resources/images/z4.jpg" alt="." />
		    </div>
		   </div>
		  <!-- 페이징 버튼 처리 -->
		  <!-- <div class="swiper-pagination"></div> -->
		
		  <!-- 방향 버튼 상황에 따라 추가 삭제가능 -->
		  <!-- <div class="swiper-button-prev"></div>
		  <div class="swiper-button-next"></div> -->
		</div>
	</div>
	</div>
</div>
<!-- <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <div class="col-md-12">
      <img src="/resources/images/ss1.png" alt="...">
      </div>
    </div>
    
    <div class="item">
      <div class="col-md-12">
      <img src="/resources/images/ss1.png" alt="...">
      </div>
    </div>
    
    <div class="item">
      <div class="col-md-12">
      <img src="/resources/images/ss1.png" alt="...">
      </div>
    </div>
  </div> -->

  <!-- <a class="left control-carousel" href="#carousel-example-generic" role="button" data-slide="prev">
    <i class="fa fa-caret-left" aria-hidden="true"></i>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right control-carousel" href="#carousel-example-generic" role="button" data-slide="next">
    <i class="fa fa-caret-right" aria-hidden="true"></i>
    <span class="sr-only">Next</span>
  </a> -->
<!--</div>  -->
		<!-- <video style="margin:10px 0 0 0"; width="100%" height="auto" src="/resources/images/NB1.mp4" autoplay muted loop></video>
   </section> -->
   
   <!-- contents -->
	<div class="container-fluid" style="clear: both;">
		<div class="row">
			<div class="col-md-1">
   			</div>
            <div class="col-md-10">
               <h2 class="category" style="margin: 50px 0 30px 0px;">고객님만을 위한 추천여행</h2>
               	<div class="responsive">
               		<div>
               		<img src="/resources/images/z1.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div> 
               		<div>
               		<img src="/resources/images/z2.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div>
               		<div>
               		<img src="/resources/images/z3.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div>
               		<div>
               		<img src="/resources/images/z4.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div>
               		<div>
               		<img src="/resources/images/z1.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div> 
               		<div>
               		<img src="/resources/images/z2.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div>
               		<div>
               		<img src="/resources/images/z3.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div>
               		<div>
               		<img src="/resources/images/z4.jpg" alt="" style="width: 300px; height: 200px;"/>
               		<ul>
               			<li style="width: 300px;margin-top:20px;color: #007aff">패키지</li>
               			<li style="width: 300px;font-weight: 600;font-size: 15pt">[에어카텔] 제주 3일 #신화월드 #신화관 #중형렌터카 #2인1실 #웰니스 ECO투어포함</li>
               			<li style="width: 300px;margin-top:10px; font-weight: 600;font-size: 20pt">399,000<span style="font-weight: 400;font-size: 15pt">원~</span></li>
               		</ul>
               		</div>
               	</div>
               	<button type="button" class="slick-prev"><span><img src="/resources/images/prev.png" alt="" /></span></button>
               	<button type="button" class="slick-next"><span><img src="/resources/images/next.png" alt="" /></span></button>
             </div>
             <div class="col-md-1">
   			</div>
	</div>
</div>
     		<!-- 추천여행 -->
	<div class="container-fluid">
		<div class="row">
   			<div class="col-md-1">
   			</div>
   		
     		<div class="col-md-10">
     			<h2 class="category" style="margin: 50px 0 30px 0px;">내 나라 구석구석</h2>
     			<ul class="mycountry">
     				<li>
     				<img src="/resources/images/gangwon.jpg" alt="" />
     				<p class="item_title">강원</p>
     				<p class="item_text">눈꽃 열차와 강원 설경<br>원데이투어 겨울여행</p>
     				</li>
     				<li>
     				<img src="/resources/images/yeosoo.jpg" alt="" />
     				<p class="item_title">여수</p>
     				<p class="item_text">바다 품은 낭만 오션뷰<br>여수밤바다 겨울여행</p>
     				</li>
     				<li>
     				<img src="/resources/images/jeju.jpg" alt="" style="border-radius: 50%;width:300px;height:300px;margin: 0;"/>
     				<p class="item_title">제주</p>
     				<p class="item_text">따뜻한 남쪽 나라에서<br>미리 봄, 제주</p>
     				<span class="value">추천</span>
     				</li>
     				<li>
     				<img src="/resources/images/soeul.jpg" alt="" />
     				<p class="item_title">서울</p>
     				<p class="item_text">롯데월드 자유이용권<br>짜릿한 액티비티와 호캉스</p>
     				</li>
     				<li>
     				<img src="/resources/images/busan.jpg" alt="" />
     				<p class="item_title">부산</p>
     				<p class="item_text">자유롭게 부산여행<br>이것저것 준비해보기!</p>
     				</li>
     			</ul>
     		</div>
   		
     		<div class="col-md-1">
     		</div>
	</div>
</div>
     		<!-- 내 나라 구석구석 -->
   </section>
   <script>
  		$(function(){
  			 $(".responsive").slick({
  			    slide: "div", //슬라이드 되어야 할 태그 ex) div, li
  			    infinite: true, //무한 반복 옵션
  			    slidesToShow: 4, // 한 화면에 보여질 컨텐츠 개수
  			    slidesToScroll: 1, //스크롤 한번에 움직일 컨텐츠 개수
  			    speed: 1000, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
  			    arrows: true, // 옆으로 이동하는 화살표 표시 여부
  			    dots: false, // 스크롤바 아래 점으로 페이지네이션 여부
  			    autoplay: false, // 자동 스크롤 사용 여부
  			    autoplaySpeed: 1000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
  			    pauseOnHover: true, // 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
  			    vertical: false, // 세로 방향 슬라이드 옵션
  			 	prevArrow: $(".slick-prev"), 
  			 	nextArrow: $(".slick-next"),
  			    dotsClass: "slick-dots", //아래 나오는 페이지네이션(점) css class 지정
  			    draggable: true, //드래그 가능 여부

  			    // responsive: [
  			    //   // 반응형 웹 구현 옵션
  			    //   {
  			         breakpoint: 960, //화면 사이즈 960px
  			    //     settings: {
  			    //       //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
  			    //       slidesToShow: 3
  			    //     }
  			    //   },
  			    //   {
  			    //     breakpoint: 768, //화면 사이즈 768px
  			    //     settings: {
  			    //       //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
  			    //       slidesToShow: 2
  			    //     }
  			    //   }
  			    // ]
  			  });
  			});
	</script>
	<script type="text/javascript">
	const swiper1 = new Swiper('.swiper1', {
    //기본 셋팅
    //방향 셋팅 vertical 수직, horizontal 수평 설정이 없으면 수평
    direction : 'horizontal',
    //한번에 보여지는 페이지 숫자
    slidesPerView : 1,
    //페이지와 페이지 사이의 간격
    spaceBetween : 0,
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
   <%@ include file="footer.jsp" %>