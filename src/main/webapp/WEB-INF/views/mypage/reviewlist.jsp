	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.util.*"%>

<%@ include file="../header.jsp"%>
 	<div class="container">
	<div class="row">
            <div class="sidebar" style="text-align:center;">
            <h2>마이페이지</h2>
                     <ul>
                        <li><a href="mypage.do">진행중인 주문내역</a></li>
                        <li><a href="orderall.do">전체 주문내역</a></li>
                         <li><a href="qna.do?id=${loginuser.id }">내 질문 보기</a></li>
                         <li><a href="reviewlist.do?id=${loginuser.id }">내 리뷰 보기</a></li>
                     </ul>
                  </div>
    	<div class="content">
    	<h2 style="margin-bottom:100px;text-align:center;">마이페이지 (내 리뷰 보기)</h2>
    	
 		 	<div class="formtable">
 		 		<table class="table" style="border-top:1px solid #c9c9c9">
 		 			<colgroup>
 		 				<col width="10%">
 		 				<col width="*">
 		 				<col width="20%">
 		 				<col width="10%">
 		 				<col width="20%">
 		 				<col width="10%">
 		 			</colgroup>
 		 				<thead>
 		 				<tr>
 		 					<th>상품번호</th>
 		 					<th>상품명</th>
 		 					<th>제목</th>
 		 					<th>작성자</th>
 		 					<th>날짜</th>
 		 					<th>별점</th>
 		 				</tr>
 		 				</thead>
 		 				<tbody>
 		
		<c:forEach var="list" items="${list}">
 			<tr>
   		<td>${list.pseq}</td>
   		<td>${list.name}</td>
   		<td>${list.title}</td>
  		<td>${list.id}</td>
  		<td>
   		<fmt:parseDate var="regdate" value="${list.regdate}" pattern="yyyy-MM-dd"/>
		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd"/>
		</td>
		<td>${list.starpoint/2}</td>
		</tr>
		
		</c:forEach>
 		 				</tbody>
 		 		</table>
 		 		<div class="col-md-10">
    				<nav>
						  <ul class="pagination" style="margin:50px 0 0 450px;">
						    <li><a href="#" class="active">1 <span class="sr-only">(current)</span></a></li>
						  </ul>
						</nav>
					</div>
			 	</div>
 			</div>
		</div>
	</div>
 	 <script>
 	$(function() {
	 	var actionForm = $("#actionForm");
		
		$(".pagination > a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		})
	});
 	 </script>
<%@ include file="../footer.jsp"%>