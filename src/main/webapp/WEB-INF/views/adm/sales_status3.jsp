<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file="adminheader.jsp" %>
 
 
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
 	
 	<div class="container" style="margin-top:150px;">
 		<div class="row">
 			<div class="col-md-2">
 				<table>
 					<tr id="1월">
 						<td><input type="hidden" id="aqnt" value="${list.totalqnt }"></td>
 						<td><input type="hidden" id="aprice2" value="${list.totalprice2 }"></td>
 						<td><input type="hidden" id="aprice3" value="${list.totalprice3 }"></td>
 					</tr>
 					<tr id="2월">
 						<td><input type="hidden" id="bqnt" value="${list2.totalqnt }"></td>
 						<td><input type="hidden" id="bprice2" value="${list2.totalprice2 }"></td>
 						<td><input type="hidden" id="bprice3" value="${list2.totalprice3 }"></td>
 					</tr>
 					<tr id="3월">
 						<td><input type="hidden" id="cqnt" value="${list3.totalqnt }"></td>
 						<td><input type="hidden" id="cprice2" value="${list3.totalprice2 }"></td>
 						<td><input type="hidden" id="cprice3" value="${list3.totalprice3 }"></td>
 					</tr>
 					<tr id="4월">
 						<td><input type="hidden" id="dqnt" value="${list4.totalqnt }"></td>
 						<td><input type="hidden" id="dprice2" value="${list4.totalprice2 }"></td>
 						<td><input type="hidden" id="dprice3" value="${list4.totalprice3 }"></td>
 					</tr>
 					<tr id="5월">
 						<td><input type="hidden" id="eqnt" value="${list5.totalqnt }"></td>
 						<td><input type="hidden" id="eprice2" value="${list5.totalprice2 }"></td>
 						<td><input type="hidden" id="eprice3" value="${list5.totalprice3 }"></td>
 					</tr>
 					<tr id="6월">
 						<td><input type="hidden" id="fqnt" value="${list6.totalqnt }"></td>
 						<td><input type="hidden" id="fprice2" value="${list6.totalprice2 }"></td>
 						<td><input type="hidden" id="fprice3" value="${list6.totalprice3 }"></td>
 					</tr>
 					<tr id="7월">
 						<td><input type="hidden" id="gqnt" value="${list7.totalqnt }"></td>
 						<td><input type="hidden" id="gprice2" value="${list7.totalprice2 }"></td>
 						<td><input type="hidden" id="gprice3" value="${list7.totalprice3 }"></td>
 					</tr>
 					<tr id="8월">
 						<td><input type="hidden" id="hqnt" value="${list8.totalqnt }"></td>
 						<td><input type="hidden" id="hprice2" value="${list8.totalprice2 }"></td>
 						<td><input type="hidden" id="hprice3" value="${list8.totalprice3 }"></td>
 					</tr>
 					<tr id="9월">
 						<td><input type="hidden" id="iqnt" value="${list9.totalqnt }"></td>
 						<td><input type="hidden" id="iprice2" value="${list9.totalprice2 }"></td>
 						<td><input type="hidden" id="iprice3" value="${list9.totalprice3 }"></td>
 					</tr>
 					<tr id="10월">
 						<td><input type="hidden" id="jqnt" value="${list10.totalqnt }"></td>
 						<td><input type="hidden" id="jprice2" value="${list10.totalprice2 }"></td>
 						<td><input type="hidden" id="jprice3" value="${list10.totalprice3 }"></td>
 					</tr>
 					<tr id="11월">
 						<td><input type="hidden" id="kqnt" value="${list11.totalqnt }"></td>
 						<td><input type="hidden" id="kprice2" value="${list11.totalprice2 }"></td>
 						<td><input type="hidden" id="kprice3" value="${list11.totalprice3 }"></td>
 					</tr>
 					<tr id="12월">
 						<td><input type="hidden" id="lqnt" value="${list11.totalqnt }"></td>
 						<td><input type="hidden" id="lprice2" value="${list12.totalprice2 }"></td>
 						<td><input type="hidden" id="lprice3" value="${list12.totalprice3 }"></td>
 					</tr>
 				</table>
 			</div>
 			<div class="col-md-10" style="margin-bottom:100px;">
		<canvas id="pieChartCanvas" width="470px" height="470px"></canvas><br><a href="admin_sales_status.do" class="btn btn-primary">매출액 보기</a>
		<a href="admin_sales_status2.do" class="btn btn-primary">순이익 보기</a>
		</div>
		</div>
	</div>
 	<script> 
 	window.onload = function () {
 		
 	    pieChartDraw();
 	}

		var labels = [];
		var data = [];
		<c:forEach items="${plist}" var="plist">
	 	labels.push('${plist.name}');
	 	data.push('${plist.totalqnt}');
	 	</c:forEach>
 	let pieChartData = {
 	    labels: labels,
 	    datasets: [{
 	        data: data,
 	        backgroundColor: ['rgb(123, 123, 255)', 'rgb(55, 155, 255)', 'rgb(255, 200, 100)', 'rgb(75, 192, 192)', 'rgb(50, 160, 235)', 'rgb(150, 100, 255)']
 	    }] 
 	};

 	let pieChartDraw = function () {
 	    let ctx = document.getElementById('pieChartCanvas').getContext('2d');
 	    
 	    window.pieChart = new Chart(ctx, {
 	        type: 'pie',
 	        data: pieChartData,
 	        options: {
 	            responsive: false
 	        }
 	    });
 	};
 	</script>
</body>
</html>