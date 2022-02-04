<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<% String pname = (String)request.getParameter("pname");%>
	<%@include file="../header.jsp" %>
	
	<div class="col-md-2 newitem">
	</div>
    <div class="col-md-9 newitem">
    	
    	<h2 style="padding-left:50px; margin:40px 0 40px 0">장바구니</h2>
    	
    		<form name="formm" method="post">
    		<c:choose>
    			<c:when test="${cartlist.size() == 0 }">
    				<h3 style="margin:40px 0 40px 0">장바구니가 비어있습니다.</h3>
    			</c:when>
    		<c:otherwise>
    			<table class="table">
    				<tr>
    					<th></th>
    					<th></th>
    					<th>상품명</th>
    					<th>수량</th>
    					<th>색상</th>
    					<th>사이즈</th>
    					<th>가격</th>
    					<th>주문일</th>
    				</tr>
    				<c:forEach items="${cartlist }" var="cartVO">
    				<tr>
    					<td style="line-height:50px;"><input type="checkbox" name="cseq" value="${cartVO.cseq }" onclick="check()" /></td>
    					<td style="line-height:50px;"><img src="${pageContext.request.contextPath }/product_images/${cartVO.image}" style="width:50px; height:50px;"></td>
    					<td style="line-height:50px; font-weight:bold;"><a href="productdetail.do?pseq=${cartVO.pseq }">${cartVO.pname }</a></td>
    					<td style="line-height:50px;">${cartVO.quantity }</td>
    					<td style="line-height:50px;">${cartVO.color }</td>
    					<td style="line-height:50px;">${cartVO.size }</td>
    					<td style="line-height:50px;"><fmt:formatNumber value="${cartVO.price2 * cartVO.quantity }" type="currency"/></td>
    					<td style="line-height:50px;">${cartVO.indate }</td>
    				</tr>
    				<input type="hidden" id="pname" value="${cartVO.pname }" />
    				<input type="hidden" id="amount" value="${cartVO.price2 * cartVO.quantity }" />
    				</c:forEach>
    				<c:forEach items="${mvo }" var="o">
    				<input type="hidden" id="name" value="${o.name }" />
    				<input type="hidden" id="email" value="${o.email }" />
    				<input type="hidden" id="address" value="${o.address1} ${o.address2 }" />
    				<input type="hidden" id="zip_num" value="${o.zip_num }" />
    				<input type="hidden" id="phone" value="${o.phone }" />
    				</c:forEach>
    				<tr>
    					<th colspan="6"></th>
    					<th>주문금액</th>
    					<th><fmt:formatNumber value="${totalprice }" type="currency"/></th>
    				</tr>
    			</table>
    			</c:otherwise>
    			</c:choose>
    			<div class="col-md-12">
    				<a class="dele" href="javascript:void(0)" onclick="goCartDelete()"><span>선택삭제</span></a>
    				<input type="button" class="btn btn-default" value="계속쇼핑하기" onclick="location.href='main.do'" />
    				<button type="button" class="btn btn-default" id="check_module"  style="margin:40px 0 40px 0">주문</button>
    				<!--  onclick="goOrderinsert()" -->
    			</div>
    	</form>
    	
    			<script>
    			function check(){
    				 
    		    	if($("input:checkbox[name ='cseq']").is(":checked") == true){
    		    		$(".dele").css("background-color","pink");
    		        }else{
    		        	$(".dele").css("background-color","white");
    		        }
    		    }
    			</script>
    			
    			<script>
				$("#check_module").click(function () {
				var pname = $("#pname").val();
				var amount = $("#amount").val();
				var name = $("#name").val();
				var address = $("#address").val();
				var zip = $("#zip_num").val();
				var email = $("#email").val();
				var IMP = window.IMP; // 생략가능
				IMP.init('imp65405219');
				IMP.request_pay({
				pg: 'inicis', // version 1.1.0부터 지원.
				pay_method: 'card',
				merchant_uid: 'merchant_' + new Date().getTime(),
				name: pname,
				amount: amount,
				buyer_email: email ,
				buyer_name: name,
				buyer_tel: phone,
				buyer_addr: address,
				buyer_postcode: zip,
				m_redirect_url: 'http://localhost:1234/shop/main.do'
				}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				document.formm.action="orderinsert.do";
				document.formm.submit();
				} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
				}
				
				});
				});
				</script>


	</div>
    	<%@include file="../footer.jsp" %>