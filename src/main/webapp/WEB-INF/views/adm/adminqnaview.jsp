<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminheader.jsp" %>
	<div class="container" style="margin-top:150px;">
 		<div class="row">
 			<div class="col-md-2">
 			</div>
 			<div class="col-md-10">
				<h2>질문 보기</h2>
					<form class="form-horizontal" name="frm">
					  <div class="form-group">
					    <div class="col-sm-10">
					    </div>
					  </div>
					  <div class="form-group">
					  <input type="hidden" name="qbno" class="form-control" id="qbno" value="${list.qbno }">
					  <input type="hidden" name="pseq" class="form-control" id="pseq" value="${list.pseq }">
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
					     <input type="text" name="qcontent" class="form-control" id="qcontent" value="${list.qcontent }">
					    </div>
					  </div>
					  <c:if test="${list.acontent ne null}">
					  <div class="form-group">
					    <label for="acontent" class="col-sm-2 control-label">답변내용</label>
					    <div class="col-sm-10">
					      <input type="text" name="acontent" class="form-control" id="acontent" value="${list.acontent }">
					    </div>
					  </div>
					  </c:if>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:0 0 40px 300px;">
					    <c:if test="${list.acontent eq null}">
					      <button type="button" class="btn btn-default" onclick="window.location='answerwrite.do?qbno=${list.qbno }'">답변하기</button>
					      </c:if>
					      <button type="button" class="btn btn-default" onclick="javascript:history.back()">목록</button>
					    </div>
					  </div>
					</form>
				</div>
			</div>
		</div>
<script>
	$(function() {
	 	$('#summernote').summernote({
		height: 500,
		fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
		fontNamesIgnoreCheck : [ '맑은고딕' ],
		focus: true,

		callbacks: {
		onImageUpload: function(files, editor, welEditable) {
		            for (var i = files.length - 1; i >= 0; i--) {
		             sendFile(files[i], this);
		            }
		        }
		}

		});

		function sendFile(file, el) {
			var form_data = new FormData();
			form_data.append('file', file);
			
			$.ajax({
	         data: form_data,
	         type: "POST",
	         url: 'productimage.do',
	         cache: false,
	         contentType: false,
	         enctype: 'multipart/form-data',
	         processData: false,
	         success: function(img_name) {
	           $(el).summernote('editor.insertImage', img_name);
	         }
	       });
	    }
	});
	</script>
</body>
</html>