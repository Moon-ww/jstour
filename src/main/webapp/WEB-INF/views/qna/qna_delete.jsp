<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

 <%
 	int qbno = Integer.parseInt(request.getParameter("qbno"));

 
 %>
<script>  

function deletecheck() {
   
   if(!my.userpw.value) {
    alert( "비밀번호를 입력하세요" );
    my.userpw.focus();
    return;
   }
   my.submit();
 		
  }
 </script>
<meta charset="UTF-8">
<title>도서관</title>
</head>
<body>
	<form name="my" method="post" action="qna_Delete.do" >
   <table class="deltable">
   <tr>
		<td><input type="hidden" size="30" name="qbno" style="float:left" value="<%=qbno %>" readonly> </td>
	</tr>
     <tr>
      <th>비밀번호</th>
      <td><input type="password" name="userpw" size="30"></td>
     </tr>
    <tr>
      <td colspan="2" style="text-align:right">
      <input type=button value="삭제" onclick="return deletecheck()">
       <input type=button value="취소" onclick="location.href='javascript:history.back()'">
       </td>
     </tr>
    </table>
	</form>
</body> 
</html>
