<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>
	<div class="container">
	<div class="col-md-3">
            <h2 class="category" style="padding-left:30px; margin:40px 0 40px 0">마이페이지</h2>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                  <div class="panel-body">
                     <ul>
                        <li><a href="mypage.do">진행중인 주문내역</a></li>
                        <li><a href="orderall.do">전체 주문내역</a></li>
                         <li><a href="qna.do?id=${loginuser.id }">내 질문 보기</a></li>
                         <li><a href="reviewlist.do?id=${loginuser.id }">내 리뷰 보기</a></li>
                     </ul>
                  </div>
                </div>
              </div>
            </div>
            </div>
    <div class="col-md-9 newitem">
    	<div style="position:relative; width:700px; height:600px;margin-top:50px; background:rgb(255 247 247);">
    	<c:forEach items="${orderlist }" var="o">
    		<br><br>
    		<h2 style="padding-left:30px">결제가 완료 되었습니다</h2><br><br>
    		<div style="padding-left:40px">
    		<h4>주문 정보</h4><br>
    		<span>주문번호 : </span><span>${o.oseq }</span><br><br>
    		<span>상품명 : </span><span>${o.pname }<img src="${pageContext.request.contextPath }/product_images/${o.image}" style="width:50px; height:50px;"></span>
    		<br><br>
    		<span>수량 : </span><span>${o.quantity }</span><br><br>
    		
    		<h4>주문자 정보</h4><br>
    		<span>주문자명 : </span><span>${o.mname }</span><br><br>
    		<span>배송지 : </span><span>${o.address1 } ${o.address2 }</span><br><br>
    		<span>결제금액 : </span><span><fmt:formatNumber value="${o.price2 * o.quantity }" type="currency"/></span><br><br>
    		<span>결제방법 : </span><span>카드</span><br><br>
    		</div>
    		</c:forEach>
    		<div style="position:absolute; bottom:10px;right:10px">
    		<input type="button" class="btn btn-default" value="계속쇼핑하기" onclick="location.href='main.do'" />
    		</div>
    	</div>
    		
    	</div>
	</div>
    	<%@include file="../footer.jsp" %>