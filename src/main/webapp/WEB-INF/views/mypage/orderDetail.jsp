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
    	
    	<h2>주문 상세 정보</h2>
    	
    		<form name="formm" method="post">
    			<h3>주문자 정보</h3>
    			<table class="table">
    				<tr>
    					<th>주문일</th>
    					<th>주문번호</th>
    					<th>주문자명</th>
    					<th>주문 총액</th>
    				</tr>
    				<tr>
    					<td>${orderDetail.indate }</td>
    					<td>${orderDetail.oseq }</td>
    					<td>${orderDetail.mname }</td>
    					<td><fmt:formatNumber value="${totalprice }" type="currency"/></td>
    				</tr>
    			</table>
    			<h3>주문 상품 정보</h3>
    			<table class="table">
    				<tr>
    					<th>상품명</th>
    					<th>상품주문번호</th>
    					<th>수량</th>
    					<th>가격</th>
    					<th>처리상태</th>
    				</tr>
    			<c:forEach items="${orderlist }" var="orderVO">
    				<tr>
    					<td>${orderVO.pname }</td>
    					<td>${orderVO.odseq }</td>
    					<td>${orderVO.quantity }</td>
    					<td><fmt:formatNumber value="${orderVO.price2*orderVO.quantity }" type="currency"/></td>
    					<td>
    						<c:choose>
    							<c:when test="${orderVO.result == '1' }">진행중</c:when>
    							<c:otherwise><span style="color:#f00">처리완료</span></c:otherwise>
    						</c:choose>
    					</td>
    				</tr>
    			</c:forEach>
    			</table>
    			
    			<div class="col-md-12">
    				<input type="button" class="btn btn-default" value="계속쇼핑하기" onclick="location.href='main.do'" />
    				
    			</div>
    	</form>
    	</div>	
	</div>
    	<%@include file="../footer.jsp" %>