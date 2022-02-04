<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../header.jsp" %>
    
   
   
   <!-- contents -->
   <section class="product" style="padding-top:50px;">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="row">
               <c:forEach items="${plist }" var="list">
                 <div class="col-sm-6 col-md-4" onclick="location.href='productdetail.do?pseq=${list.pseq }'">
                   <div class="thumbnail">
                   		<div class="thumbnail-image">
                    <img src="${pageContext.request.contextPath }/product_images/${list.image }">
                    	</div>
                     <div class="caption newitem">
                       <h3>${list.name }</h3>
                       <c:if test="${list.review < '0.01' }">
                       <span class="starspan"><img src="images/0.png" alt="" />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '1.99' and list.review > '0.01'}">
                       <span class="starspan"><img src="images/1.png" alt=""  />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '2.99' and list.review >= '1.99'}">
                       <span class="starspan"><img src="images/2.png" alt=""  />&nbsp;${list.review /2 }</span><br>
                       </c:if>
                       <c:if test="${list.review < '3.99' and list.review >= '2.99'}">
                       <span class="starspan"><img src="images/3.png" alt=""  />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '4.99' and list.review >= '3.99'}">
                       <span class="starspan"><img src="images/4.png" alt=""  />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '5.99' and list.review >= '4.99'}">
                       <span class="starspan"><img src="images/5.png" alt=""  />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '6.99' and list.review >= '5.99'}">
                       <span class="starspan"><img src="images/6.png" alt=""  />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '7.99' and list.review >= '6.99'}">
                       <span class="starspan"><img src="images/7.png" alt="" />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '8.99' and list.review >= '7.99'}">
                       <span class="starspan"><img src="images/8.png" alt=""  />&nbsp; ${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review < '9.99' and list.review >= '8.99'}">
                       <span class="starspan"><img src="images/9.png" alt="" />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <c:if test="${list.review > '9.99'}">
                       <span class="starspan"><img src="images/10.png" alt=""  />&nbsp;${list.review /2}</span><br>
                       </c:if>
                       <span style="font-weight:bold; font-size:22px"><fmt:formatNumber value="${list.price2 }"/></span><span>원</span>
                     </div>
                   </div>
                 </div>
                 </c:forEach>
               </div>
            </div>
         </div>
      </div>
     <!--  <nav style="margin:0 0 0 650px;">
						  <ul class="pagination">
						    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav> -->
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
			
		<form id="actionForm" action="productsearch.do" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<input type="hidden" name="sel" value="${pageMaker.cri.type}">
			<input type="hidden" name="word" value="${pageMaker.cri.keyword}">
		</form>
		</div> 
   </section>
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
   <%@ include file="../footer.jsp" %>