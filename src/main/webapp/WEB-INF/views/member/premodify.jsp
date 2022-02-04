<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.net.URLEncoder" %>
	<%@ page import="java.security.SecureRandom" %>
	<%@ page import="java.math.BigInteger" %>
	<%@include file="../header.jsp" %>


    
		    <div class="col-md-7 newitem">
		    	<h2 style="margin:100px 0 100px 200px;">비밀번호 확인</h2>
		    	<form class="form-horizontal" name="frm" id="frm" method="post" action="premodifypro.do">
					  <div class="form-group">
					    <label for="userpwd" class="col-sm-2 control-label">비밀번호</label>
					    <div class="col-sm-10">
					      <input type="password" name="pwd" class="form-control" id="pwd" placeholder="비밀번호입력">
					      
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:0 0 100px 200px;">
					      <input type="submit" id="login" class="btn btn-default" value="확인" style="width:350px;" >
					    </div>
					  </div>
					</form>
    </div>
<%@include file="../footer.jsp" %>