<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminheader.jsp" %>

	
	
	
	<div class="container" style="margin-top:150px;">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-10">
				<form class="form-inline" style="margin-bottom:30px;">
				  <div class="form-group">
				    <label for="product">회원검색</label>&nbsp;&nbsp;
				    <input type="text" name="word" class="form-control" id="product" placeholder="아이디">
				  </div>
				  <button type="submit" class="btn btn-default">검색</button>
				</form>
					<div class="table-responsive">
					  <table class="table">
					    <tr>
					    	<th>번호</th>
					    	<th>상품번호</th>
					    	<th>제목</th>
					    	<th>작성자</th>
					    	<th>처리상태</th>
					    	<th>작성날짜</th>
					    	<th>조회수</th>
					    </tr>
					    <c:choose>
					    	<c:when test="${empty list }">
					    		<tr>
					    			<td colspan="7">데이터가 없습니다</td>
					    		</tr>
					    	</c:when>
					    	<c:otherwise>
					    	<form>
					    		<c:forEach items="${list }" var="list">
							    <tr>
							    	<td>${list.qbno }</td>
							    	<td>${list.pseq }</td>
							    	<td><a href="admin_qna_view.do?qbno=${list.qbno }">${list.title }</a></td>
							    	<td>${list.writer }</td>
							    	<c:if test="${list.status ==1 }">
							   		<td><span class="a1">답변완료</span></td>
							   		</c:if>
							   		<c:if test="${list.status ==0 }">
							   		<td><span class="a2">답변대기</span></td>
							   		</c:if>
							    	<td>${list.regdate }</td>
							    	<td>${list.viewcount }</td>
							    </tr>
							    </c:forEach>
							   </form>
						    </c:otherwise>
					    </c:choose>
					  </table>
					  	<div class="pagination">
						<c:if test="${pageMaker.prev }">
							<a href="${pageMaker.startpage-1 }"><i class="fa  fa-angle-double-left"></i></a>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startpage }" end="${pageMaker.endpage }">
							<a href="${num}" class="${pageMaker.cri.pageNum == num?'active':'' }">${num}</a>
						</c:forEach>
						<c:if test="${pageMaker.next }">
							<a href="${pageMaker.endpage+1 }"><i class="fa  fa-angle-double-right"></i></a>
						</c:if>
							
						<form id="actionForm" action="admin_member_list.do" method="get">
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
							<input type="hidden" name="sel" value="${pageMaker.cri.type}">
							<input type="hidden" name="word" value="${pageMaker.cri.keyword}">
						</form>
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
</body>
</html>