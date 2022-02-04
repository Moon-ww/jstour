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
					    	<th>회원아이디</th>
					    	<th>회원이름</th>
					    	<th>이메일</th>
					    	<th>주소</th>
					    	<th>전화번호</th>
					    	<th>가입날짜</th>
					    	<th>회원삭제</th>
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
							    	<td>${list.id }</td>
							    	<td>${list.name }</td>
							    	<td>${list.email }</td>
							    	<td>${list.address1 } ${list.address2 }</td>
							    	<td>${list.phone }</td>
							    	<td>
							    		<fmt:parseDate var="indate" value="${list.indate}" pattern="yyyy-MM-dd"/>
										<fmt:formatDate value="${indate }" pattern="yyyy-MM-dd"/></td>
							    	<td>
							    	<c:if test="${list.id ne 'admin'}">
							    	<a href="memberdelete.do?id=${list.id }">삭제</a>
							    	</c:if>
							    	</td>
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