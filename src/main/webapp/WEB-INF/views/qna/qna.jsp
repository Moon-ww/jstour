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
    	<h2 style="margin-bottom:100px;text-align:center;">마이페이지 (내 질문 보기)</h2>
    	
 		 	<div class="formtable">
 		 		<table class="table" style="border-top:1px solid #c9c9c9">
 		 			<colgroup>
 		 				<col width="8%">
 		 				<col width="*">
 		 				<col width="30%">
 		 				<col width="10%">
 		 				<col width="10%">
 		 				<col width="10%">
 		 			</colgroup>
 		 				<thead>
 		 				<tr>
 		 					<th scope="col">번호</th>
 		 					<th scope="col">제목</th>
 		 					<th scope="col">날짜</th>
 		 					<th scope="col">글쓴이</th>
 		 					<th scope="col">답변상태</th>
 		 					<th scope="col">조회수</th>
 		 				</tr>
 		 				</thead>
 		 				<tbody>
 		 <c:set var="number" value="${count - ((pageMaker.cri.pageNum-1) * 10)}"/>
		<c:forEach var="list" items="${qnalist}">
 			<tr>
   		<td>${number }</td>
   		<td><a href="qna_view.do?qbno=${list.qbno}">${list.title}</a></td>
   		<td>
   		<fmt:parseDate var="regdate" value="${list.regdate}" pattern="yyyy-MM-dd"/>
		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd"/>
		</td>
  		<td>${list.writer}</td>
  		<c:if test="${list.status ==1 }">
   		<td><span class="a1">답변완료</span></td>
   		</c:if>
   		<c:if test="${list.status ==0 }">
   		<td><span class="a2">답변대기</span></td>
   		</c:if>
		<td>${list.viewcount}</td>
		</tr>
		<c:set var="number" value="${number-1 }"/>
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