<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@include file="../header.jsp" %>

	<div class="col-md-1 newitem">
	</div>
    <div class="col-md-11 newitem">
    		<form name="formm" method="post" action="">
    		<input type="hidden" name="pseq" value="${pvo.pseq }" />
    		<input type="hidden" name="image" value="${pvo.image }" />
    			<div class="">
    				<div class="col-md-5 details">
    					<img src="${pageContext.request.contextPath }/product_images/${pvo.image}" alt="" />
    				</div>
    				<div class="col-md-7">
    					<div class="infomation">
    						<h2>${pvo.name }</h2>
    						<c:if test="${pvo.review < '0.01' }">
                       <span class="starspan"><img src="images/0.png" alt="" />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '1.99' and pvo.review > '0.01'}">
                       <span class="starspan"><img src="images/1.png" alt=""  />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '2.99' and pvo.review >= '1.99'}">
                       <span class="starspan"><img src="images/2.png" alt=""  />&nbsp;${pvo.review /2 }</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '3.99' and pvo.review >= '2.99'}">
                       <span class="starspan"><img src="images/3.png" alt=""  />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '4.99' and pvo.review >= '3.99'}">
                       <span class="starspan"><img src="images/4.png" alt=""  />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '5.99' and pvo.review >= '4.99'}">
                       <span class="starspan"><img src="images/5.png" alt=""  />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '6.99' and pvo.review >= '5.99'}">
                       <span class="starspan"><img src="images/6.png" alt=""  />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '7.99' and pvo.review >= '6.99'}">
                       <span class="starspan"><img src="images/7.png" alt="" />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '8.99' and pvo.review >= '7.99'}">
                       <span class="starspan"><img src="images/8.png" alt=""  />&nbsp; ${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review < '9.99' and pvo.review >= '8.99'}">
                       <span class="starspan"><img src="images/9.png" alt="" />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
                       <c:if test="${pvo.review > '9.99'}">
                       <span class="starspan"><img src="images/10.png" alt=""  />&nbsp;${pvo.review /2}</span><br>
                       </c:if>
    						<p style="font-weight:bold; font-size:20pt;margin-top:10px;">
    						<span class="${pvo.price2 }"></span>
    						<fmt:formatNumber value="${pvo.price2 }"/>???
    						</p>
    						<p>SK pay point ?????? 126P ??????( FAMILY 126P )</p>
							<p>??????????????? 1?????? ?????? ?????? ???, 300P ?????? 4??? ??????</p>
							<p>11?????? ???????????? ??? ???????????? + ?????? 2% ??????</p>
							<p>?????? 22?????? ??????????????? ??????</p>
							<p>???????????? ?????? </p>
							<p>[??????] ??????????????????????????? : 1??? [????????????]</p>
							<p>L.POINT ??????</p>
							<p>e????????????????????? 5%???????????? </p>
    						
    					</div>
    						<div style="margin:30px 0 30px 30px">
    							<button class="minus" type="button" style="height:30px;">-</button>
    							<input style="width:70px; height:30px;" type="text" name="quantity" value="1" class="quantity" readonly>
    							<button class="plus" type="button" style="height:30px;">+</button>
					    	</div>
					    	
					    	<div>
					    	<span>???????????????</span>
					    		<select name="color" id="" style="height:25px;margin-left:10px;">
					    			<option style="text-align:center;" value="">----??????----</option>
					    		<c:if test="${pvo.red !=null }">
					    			<option style="text-align:center;" value="red">??????</option>
					    		</c:if>
					    		<c:if test="${pvo.blue !=null }">
					    			<option style="text-align:center;" value="blue">??????</option>
					    		</c:if>
					    		<c:if test="${pvo.grey !=null }">
					    			<option style="text-align:center;" value="grey">??????</option>
					    		</c:if>
					    		<c:if test="${pvo.white !=null }">
					    			<option style="text-align:center;" value="white">??????</option>
					    		</c:if>
					    		<c:if test="${pvo.black !=null }">
					    			<option style="text-align:center;" value="black">??????</option>
					    		</c:if>
					    		</select>
					    		<br><br>
					    		</div>
					    	<div>
					    	<span>???????????????</span>
					    		<select name="size" id="" style="height:25px;margin-left:10px;">
					    		<option value="" style="text-align:center;">----??????----</option>
					    		<c:if test="${pvo.s !=null }">
					    			<option style="text-align:center;" value="s">S</option>
					    		</c:if>
					    		<c:if test="${pvo.m !=null }">
					    			<option style="text-align:center;" value="m">M</option>
					    		</c:if>
					    		<c:if test="${pvo.l !=null }">
					    			<option style="text-align:center;" value="l">L</option>
					    		</c:if>
					    		<c:if test="${pvo.xl !=null }">
					    			<option style="text-align:center;" value="xl">XL</option>
					    		</c:if>
					    		</select>
					    		</div>
    						
    						
    						<div style="padding:30px 0;margin-left:20px;">
    							<span class="total"></span>
    						</div>
    						<input type="hidden" name="jname" value="${pvo.name }" />
    						<div class="">
    							<button type="button" class="btn btn-danger" id="plus" style="margin-left:20px;">??????????????? ??????</button>
    							<span id="pluslist" style="margin-left:40px;"></span>
    							<span>${list.name }</span>
    						</div>
    				</div>
    			</div><!-- ????????? ??????-->
    		</form>
    			<div role="tabpanel" class="category-tab">

                 <!-- Nav tabs -->
                 <ul class="nav nav-tabs" role="tablist">
                   <li style="margin-top:40px;" role="presentation" class="active"><a href="#product" aria-controls="product" role="tab" data-toggle="tab">????????????</a></li>
                   <li style="margin-top:40px;" role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">????????????</a></li>
                   <li style="margin-top:40px;" role="presentation"><a href="#qna" aria-controls="qna" role="tab" data-toggle="tab">????????????</a></li>
                 </ul>
               
                 <!-- Tab panes -->
                 <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active" id="product">
                      <div class="">
                      <div class="thumbnail2">
                      	${pvo.content }
                      </div>
                    </div>
                   </div>
                   <div role="tabpanel" class="tab-pane" id="review">
                   <div class="col-sm-12 col-md-8">
                      <div class="thumbnail2">
                      <c:forEach items="${rvo }" var="rvo" varStatus="status">
                      
                      		<ul>
                      			<li style="font-size:20px; margin:10px 0 20px 5px;border-top:1px solid #ccc;padding-top:10px;">${rvo.id }</li>
                      			<c:if test="${rvo.starpoint eq '1' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/1.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '2' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/2.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '3' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/3.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '4' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/4.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '5' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/5.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '6' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/6.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '7' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/7.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '8' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/8.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '9' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/9.png" alt="" /></li>
                      			</c:if>
                      			<c:if test="${rvo.starpoint eq '10' }">
                      			<li style="font-size:20px; margin:10px 0 20px 5px;"><img src="images/10.png" alt="" /></li>
                      			</c:if>
                      			<li style="font-size:15px; margin:10px 0 20px 5px;">${rvo.title }</li>
                      			<li style="font-size:15px; margin:10px 0 20px 5px; width:600px;">${rvo.rcontent }</li>
                      			<li style="font-size:15px; margin:10px 0 20px 5px;">${rvo.regdate }</li>
                      		</ul>
					
                          </c:forEach>
                      </div>
                    </div>
                  </div>
                   <div role="tabpanel" class="tab-pane" id="qna">
                   <div class="col-sm-12 col-md-8">
                      <div class="thumbnail2">
                      <table class="table">
                      	<colgroup>
					    <col width="60%"/>
					    <col width="10%"/>
					    <col width="30%"/>
					  </colgroup>
                      
                      	<tr>
                      		<th scope="col">??????/??????</th>
                      		<th scope="col">?????????</th>
                      		<th scope="col">?????????</th>
                      	</tr>
                      	<c:forEach items="${qvo }" var="qvo" varStatus="status">
                      		<tr class="itemss">
                      			<td>${qvo.title }</td>
                      			<td>${qvo.writer }</td>
                      			<td>${qvo.regdate }</td>
                      		</tr>
                      		<tr class="hide">
                      		<td colspan="3">
                      		<span style="font-size:30px; color:blue; margin-right:50px;">Q</span> ${qvo.qcontent }
                      		 <c:if test="${qvo.acontent ne null}">
                      		<br><br><br>
                      		<span style="font-size:30px; color:red; margin-right:50px;">A</span> ${qvo.acontent }
                      		</c:if>
                      		</td>
                      		</tr>
                          </c:forEach>
                          </table>
                      </div>
                    </div>
                  </div>
                 </div>
            </div>
    		</div>
    		<script>
	$("#plus").click(function() {
		
		var queryString = $("form[name=formm]").serialize() ;
		var quantity = $("input[name=quantity ]").val();
		var name = $("input[name=jname ]").val();
		   
		$.ajax({
			  
			type:'post',
			  url:'cartinsert.do',
			  data:queryString,
			  
			  success:function(data) {
			      //?????? ??????, ?????? ??? ?????? ??????
			    
			 },//sucess end
			 error : function(xhr,status,error) {
			      //?????? ?????? ??? ??????
			      alert(queryString);
			  }
		})//ajax end
		
  		if(confirm(name +"???"+ quantity+" ??? ??? ??????????????? ?????????????????????\n ??????????????? ?????????????????????????") == true) {
	  		location.href='cartlist.do';
 		 }else {
	 		 return false;
		  }
	})
		</script>
		<script type="text/javascript">  
        $(function(){  
            var article = (".table .show");  
            $(".table .itemss  td").click(function() {  
                var myArticle =$(this).parents().next("tr");  
                if($(myArticle).hasClass('hide')) {  
                    $(article).removeClass('show').addClass('hide');  
                    $(myArticle).removeClass('hide').addClass('show');  
                }  
                else {  
                    $(myArticle).addClass('hide').removeClass('show');  
                }  
            });  
        });  
    </script>  
		
    	<%@include file="../footer.jsp" %>