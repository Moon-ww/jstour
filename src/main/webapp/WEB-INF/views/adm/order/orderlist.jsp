<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp" %>
<script type="text/javascript">
	function go_order_save() {
		var count = 0;
		
		if(document.frm.result.length == undefined) {
			if(document.frm.result.checked == true) {
				count++;
			}
		}
		
		for(var i=0; i<document.frm.result.length; i++) {
			if(document.frm.result[i].checked == true) {
				count++;
			}
		}
		if(count == 0) {
			alert("주문처리 할 항목 선택");
		}else {
			document.frm.action = "adminordersave.do";
			document.frm.submit();
		}
	}
</script>
<div class="container" style="margin-top:150px;">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-10">
				<form name="frm" method="post" class="form-inline" >
				  <div class="form-group" style="margin-bottom:30px;">
				    <label for="product">주문자명</label>&nbsp;&nbsp;
				    <input type="text" name="key" class="form-control" id="product" placeholder="주문자명">
				  <button type="button" class="btn btn-default" onclick="go_search()">검색</button>
				  </div>
				  
				
					<div class="table-responsive">
					  <table class="table tt">
					    <tr>
					    	<th>주문번호(상태)</th>
					    	<th>주문자명</th>
					    	<th>상품명</th>
					    	<th>수량</th>
					    	<th>우편번호</th>
					    	<th>배송지</th>
					    	<th>전화번호</th>
					    	<th>주문일</th>
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
					    		<td>
					    			<c:choose>
					    				<c:when test="${list.result == '1' }">
					    					<span> &nbsp;${list.odseq } &nbsp;&nbsp;</span>
					    					<input type="checkbox" name="result" value="${list.odseq }" />미처리
					    				</c:when>
					    				<c:otherwise>
					    					<span>${list.odseq }</span>
					    					<input type="checkbox" checked="checked"name="result" value="${list.odseq }" />처리완료
					    				</c:otherwise>
					    			</c:choose>
					    		</td>
					    		<td>${list.mname }</td>
					    		<td>${list.pname }</td>
					    		<td>${list.quantity }</td>
					    		<td>${list.zip_num }</td>
					    		<td>${list.address1 } ${list.address2 }</td>
					    		<td>${list.phone }</td>
					    		<td>
					    		<fmt:parseDate var="indate" value="${list.indate}" pattern="yyyy-MM-dd"/>
								<fmt:formatDate value="${indate }" pattern="yyyy-MM-dd"/>
					    		</td>
					    	</tr>
					    </c:forEach>
					    </c:otherwise>
					    </c:choose>
					  </table>
					  </div>
					  <input type="button" value="주문처리(입금확인)" class="btn btn-default" onclick="go_order_save()"/>
					  	</form>
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
			
							<form id="actionForm" action="admin_order_list.do" method="get">
								<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
								<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
								<%-- <input type="hidden" name="sel" value="${pageMaker.cri.type}">
								<input type="hidden" name="word" value="${pageMaker.cri.keyword}"> --%>
							</form>
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