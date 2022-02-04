<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminheader.jsp" %>
	<div class="container" style="margin-top:150px;">
 		<div class="row">
 			<div class="col-md-2">
 			</div>
 			<div class="col-md-10">
				<h2>답변 하기</h2>
					<form class="form-horizontal" name="frm" method="post" action="answerwritepro.do">
					  <div class="form-group">
					   <input type="hidden" name="qbno" class="form-control" id="qbno" value="${list.qbno }">
					  <input type="hidden" name="pseq" class="form-control" id="pseq" value="${list.pseq }">
					    <div class="col-sm-10">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="writer" class="col-sm-2 control-label">글쓴이</label>
					    <div class="col-sm-10">
					      <input type="text" name="writer" class="form-control" id="writer" value="${list.writer }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="title" class="col-sm-2 control-label">제목</label>
					    <div class="col-sm-10">
					      <input type="text" name="title" class="form-control" id="title" value="${list.title }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="qcontent" class="col-sm-2 control-label">질문 내용</label>
					    <div class="col-sm-10">
					     <textarea name="qcontent" class="form-control" id="qcontent" style="height:150px; background:#fff;" readonly>${list.qcontent }</textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="acontent" class="col-sm-2 control-label">답변내용</label>
					    <div class="col-sm-10">
					      <textarea name="acontent" class="form-control" id="acontent" style="height:200px;"></textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:0 0 40px 300px;">
					      <button type="submit" class="btn btn-default" >답변하기</button>
					      <button type="button" class="btn btn-default" onclick="javascript:history.back()">목록</button>
					    </div>
					  </div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>