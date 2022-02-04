<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../adminheader.jsp" %>

	<div class="container" style="margin-top:150px;">
 		<div class="row">
 			<div class="col-md-2">
 			</div>
 			<div class="col-md-10">
				<h2>상품수정</h2>
					<form class="form-horizontal" name="frm" method="post" enctype="multipart/form-data" action="admin_product_modify.do">
					  <div class="form-group">
					    <label for="kind" class="col-sm-2 control-label">상품분류</label>
					    <div class="col-sm-10">
					    	<select name="kind" id="" style="width:80px;height:40px; text-align:center;">
					    		<option value="1"<c:if test="${list.kind == 1}">selected</c:if>>상의</option>
					    		<option value="2"<c:if test="${list.kind == 2}">selected</c:if>>하의</option>
					    		<option value="3"<c:if test="${list.kind == 3}">selected</c:if>>점퍼</option>
					    	</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="name" class="col-sm-2 control-label">상품명</label>
					    <div class="col-sm-10">
					      <input type="hidden" name="pseq" class="form-control" style="width:100%" id="pseq" value="${list.pseq }">
					      <input type="text" name="name" class="form-control" style="width:100%" id="name" value="${list.name }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price1" class="col-sm-2 control-label">원가</label>
					    <div class="col-sm-10">
					      <input type="text" name="price1" class="form-control" style="width:100%" id="price1" value="${list.price1 }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price2" class="col-sm-2 control-label">판매가</label>
					    <div class="col-sm-10">
					     <input type="text" name="price2" class="form-control" style="width:100%" id="price2" value="${list.price2 }" onBlur="go_ab()" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="price3" class="col-sm-2 control-label">순이익</label>
					    <div class="col-sm-10">
					      <input type="text" name="price3" class="form-control" style="width:100%" id="price3" value="${list.price3 }" readonly onblur="numberformat(this)">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="col-sm-2 control-label">상품설명</label>
					    <div class="col-sm-10">
					      <textarea name="content" class="form-control" style="width:100%" id="summernote">${list.content}</textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="image" class="col-sm-2 control-label">대표이미지</label>
					    <div class="col-sm-10">
					      <input type="file" name="image" class="form-control" id="image">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:30px 0 50px 420px">
					      <button type="submit" class="btn btn-default" onclick="">상품 수정</button>
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