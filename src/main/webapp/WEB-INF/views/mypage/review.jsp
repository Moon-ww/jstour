<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
			<div class="col-md-10">
				<h2 style="margin:30px 0 50px 110px;">리뷰등록</h2>
				<div class="col-md-12">
					<form class="form-horizontal" name="frm" method="post" action = "reviewpro.do" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="pprice" class="col-sm-2 control-label">상품번호</label>
					    <div class="col-sm-10">
					      <input type="text" name="pseq" class="form-control" id="pseq" value="${product.pseq }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="name" class="col-sm-2 control-label">상품명</label>
					    <div class="col-sm-10">
					      <input type="text" name="name" class="form-control" id="name" value="${product.name }">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="id" class="col-sm-2 control-label">작성자</label>
					    <div class="col-sm-10">
					      <input type="text" name="id" class="form-control" id="id" value="${loginuser.id }">
					    </div>
					  </div>
					   <div class="form-group">
						<label for="star" class="col-sm-2 control-label">별점</label>
						<div class="starpoint_wrap" style="padding-left:20px">
						  <div class="starpoint_box" style="width:109px">
						    <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
						    <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
						    <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
						    <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
						    <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
						    <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
						    <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
						    <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
						    <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
						    <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
						    <input type="radio" name="starpoint" id="starpoint_1" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_2" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_3" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_4" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_5" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_6" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_7" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_8" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_9" class="star_radio">
						    <input type="radio" name="starpoint" id="starpoint_10" class="star_radio">
						    <input type="hidden" name="point" id="point" class="star_radio">
						    <span class="starpoint_bg"></span>
						  </div>
						</div>
						</div>
					  <div class="form-group">
					    <label for="title" class="col-sm-2 control-label">제목</label>
					    <div class="col-sm-10">
					      <input type="text" name="title" class="form-control" id="title">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="content" class="col-sm-2 control-label">내용</label>
					    <div class="col-sm-10">
					      <textarea name="rcontent" class="form-control" id="summernote"></textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10" style="margin:30px 0 50px 420px">
					      <button type="submit" class="btn btn-default" onclick="">리뷰 등록</button>
					      <button type="button" class="btn btn-default" onclick="javascript:history.back()">취소</button>
					    </div>
					  </div>
					</form>
				</div>
			</div>

	<script>   
   $('.star_radio').click(function(){
      var star = $(this).attr("id");
     $("#point").val(star);
   });
</script>
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
				         url: 'profileImage.do',
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
<%@include file="../footer.jsp" %>