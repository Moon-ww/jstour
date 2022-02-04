<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminheader.jsp" %>

	<div class="container" style="margin-top:150px;">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-10">
				<form class="form-inline" action="admin.do" style="margin-bottom:30px;">
				<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
				  <div class="form-group">
				    <label for="product">상품명</label>&nbsp;&nbsp;
				    <input type="text" name="word" class="form-control" id="product" placeholder="상품명">
				  </div>
				  <button type="submit" class="btn btn-default">검색</button>
				</form>
				
					<div class="table-responsive">
					  <table class="table">
					    <tr>
					    	<th>상품번호</th>
					    	<th>상품명</th>
					    	<th>이미지</th>
					    	<th>원가</th>
					    	<th>판매가</th>
					    	<th>등록일</th>
					    	<th>사용유무</th>
					    </tr>
					    <c:choose>
					    	<c:when test="${empty list }">
					    		<tr>
					    			<td colspan="7">데이터가 없습니다</td>
					    		</tr>
					    	</c:when>
					    	<c:otherwise>
					    		<c:forEach items="${list }" var="list">
							    <tr>
							    	<td>${list.pseq }</td>
							    	<td><a href="admin_product_view.do?pseq=${list.pseq }">${list.name }</a></td>
							    	<td><img src="/resources/product_images/${list.image }" alt="" style="width:30px;" /></td>
							    	<td><fmt:formatNumber value="${list.price1 }"/></td>
							    	<td><fmt:formatNumber value="${list.price2 }"/></td>
							    	<td>${list.indate }</td>
							    	<td>
							    		<c:choose>
							    			<c:when test="${list.useyn == 'y' }">사용</c:when>
							    			<c:otherwise>미사용</c:otherwise>
							    		</c:choose>
							    	</td>
							    </tr>
							    </c:forEach>
						    </c:otherwise>
					    </c:choose>
					  </table>
					  	
							<a href="/adm/product/productwrite.do" class="btn btn-default" style="float:right;">상품등록</a>
							<div class="pagination" style="margin-top:-50px">
							<c:if test="${pageMaker.prev }">
								<a href="${pageMaker.startpage-1 }"><i class="fa  fa-angle-double-left"></i></a>
							</c:if>
							<c:forEach var="num" begin="${pageMaker.startpage }" end="${pageMaker.endpage }">
								<a href="${num}" class="${pageMaker.cri.pageNum == num?'active':'' }">${num}</a>
							</c:forEach>
							<c:if test="${pageMaker.next }">
								<a href="${pageMaker.endpage+1 }"><i class="fa  fa-angle-double-right"></i></a>
							</c:if>
			
						<form id="actionForm" action="admin.do" method="get">
						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
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