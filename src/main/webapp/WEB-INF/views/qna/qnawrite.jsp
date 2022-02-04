<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*"%>
  
 
<%@ include file="../header.jsp"%>

 	 <div class="col-md-10">
				<h2 style="margin:30px 0 50px 110px;">문의 하기</h2>
				<div class="col-md-12">
					<form class="form-horizontal" name="frm" method="post" action = "qnawritepro.do">
					  <div class="form-group">
					    <label for="pseq" class="col-sm-2 control-label">상품번호</label>
					    <div class="col-sm-10">
					      <input type="text" name="pseq" class="form-control" id="pseq" value="${qna.pseq }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="writer" class="col-sm-2 control-label">글쓴이</label>
					    <div class="col-sm-10">
					      <input type="text" name="writer" class="form-control" id="writer" value="${loginuser.id }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="title" class="col-sm-2 control-label">제목</label>
					    <div class="col-sm-10">
					      <input type="text" name="title" class="form-control" id="title">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="qcontent" class="col-sm-2 control-label">내용</label>
					    <div class="col-sm-10">
					      <textarea name="qcontent" class="form-control" id="qcontent" style="height:150px;"></textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="text-align:center;">
					      <button type="submit" class="btn btn-default" onclick="">저장하기</button>
					      <button type="button" class="btn btn-default" onclick="javascript:history.back()">취소</button>
					    </div>
					  </div>
					</form>
				</div>
			</div>
 	 	
 	 		<%@ include file="../footer.jsp"%>