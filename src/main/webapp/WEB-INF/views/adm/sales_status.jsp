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
 						 <%--<td><input type="hidden" id="aqnt" value="${list.totalqnt }"></td>
 						<td><input type="hidden" id="aprice2" value="${list.totalprice2 }"></td>
 						<td><input type="hidden" id="aprice3" value="${list.totalprice3 }"></td> --%>
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
		<canvas id="myChart"></canvas><br><a href="admin_sales_status2.do" class="btn btn-primary">순이익 보기</a>
		<a href="admin_sales_status3.do" class="btn btn-primary">판매량 보기</a>
		</div>
		</div>
	</div>
 	<script> 
 	var ctx = document.getElementById('myChart');
 	var aprice2 = $("#aprice2").val();
 	var bprice2 = $("#bprice2").val();
 	var cprice2 = $("#cprice2").val();
 	var dprice2 = $("#dprice2").val();
 	var eprice2 = $("#eprice2").val();
 	var fprice2 = $("#fprice2").val();
 	var gprice2 = $("#gprice2").val();
 	var hprice2 = $("#hprice2").val();
 	var iprice2 = $("#iprice2").val();
 	var jprice2 = $("#jprice2").val();
 	var kprice2 = $("#kprice2").val();
 	var lprice2 = $("#lprice2").val();
 	var myChart = new Chart(ctx, { 
 		type: 'bar', 
 		data: { 
 			labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
 			datasets: [{ label: '매출액', data: [aprice2, bprice2, 33000, 25000, 52000, 40000, 43000, 70000, 16000, 51000, 40000, 49000], 
 			backgroundColor: [ 
 				'rgba(255, 99, 132, 0.2)',
 				'rgba(54, 162, 235, 0.2)', 
 				'rgba(255, 206, 86, 0.2)', 
 				'rgba(75, 192, 192, 0.2)', 
 				'rgba(153, 102, 255, 0.2)', 
 				'rgba(255, 159, 64, 0.2)',
 				'rgba(235, 29, 132, 0.2)',
 				'rgba(74, 92, 235, 0.2)', 
 				'rgba(235, 136, 86, 0.2)', 
 				'rgba(95, 122, 192, 0.2)', 
 				'rgba(123, 32, 255, 0.2)', 
 				'rgba(235, 89, 64, 0.2)'
 				], 
 				borderColor: [ 
 					'rgba(255, 99, 132, 1)', 
 					'rgba(54, 162, 235, 1)', 
 					'rgba(255, 206, 86, 1)', 
 					'rgba(75, 192, 192, 1)', 
 					'rgba(153, 102, 255, 1)', 
 					'rgba(255, 159, 64, 1)',
 					'rgba(235, 29, 132, 1)', 
 					'rgba(74, 92, 235, 1)', 
 					'rgba(235, 136, 86, 1)', 
 					'rgba(95, 122, 192, 1)', 
 					'rgba(123, 32, 255, 1)', 
 					'rgba(235, 89, 64, 1)'
 					], 
 					borderWidth: 1 
 					}] 
 					}, 
 					options: { 
 						scales: { 
 							yAxes: [{ 
 								ticks: { 
 									beginAtZero: true
 									} 
 							}]
 						}
 					} 
 				}); 
 	</script>
</body>
</html>