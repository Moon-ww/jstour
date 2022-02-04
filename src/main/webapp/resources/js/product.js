function NumberFormat(won) {
   comma = won.value;
   comma = comma.replace(/\D/g,''); //d:숫자를 찾음, D:숫자가 아닌 문자를 찾음
   len = comma.length - 3;
   while(len>0){
      comma = comma.substr(0,len) + ',' + comma.substr(len);
      len -= 3;
   }
   won.value = comma;
   return won;
}

function go_save() {

	if($("input[name='size']:checked").length >=1) {
		var size = $("input[name=size]:checked");
		var s = [];
		for(var i=0; i<4; i++) {
			if(size[i]) {
				var sizes = size[i].value;
				s[i] = sizes;
			}
		}
		$("sizes").val(s);
	}

	if($("input[name='color']:checked").length >=1) {
		var color = $("input[name=color]:checked");
		var c = [];
		for(var i=0; i<5; i++) {
			if(color[i]) {
				var colors = color[i].value;
				c[i] = colors;
			}
		}
		$("colors").val(c);
	}
	
	var theForm = document.frm;
	
	if(!theForm.kind.value) {
		alert("상품분류 선택하세요");
		theForm.kind.focus();
	}else if(!theForm.name.value) {
		alert("상품명 입력하세요");
		theForm.name.focus();
	}else if(!theForm.price1.value) {
		alert("원가 입력하세요");
		theForm.price1.focus();
	}else if(!theForm.price2.value) {
		alert("판매가 입력하세요");
		theForm.price2.focus();
	}else if(!theForm.price3.value) {
		alert("이익 입력하세요");
		theForm.price3.focus();
	}else if(!theForm.content.value) {
		alert("상품설명 입력하세요");
		theForm.content.focus();
	}else if(!theForm.image.value) {
		alert("대표이미지 선택하세요");
		theForm.image.focus();
	}else{
		theForm.encoding = "multipart/form-data";
		theForm.price1.value = removeComma(theForm.price1);
		theForm.price2.value = removeComma(theForm.price2);
		theForm.price3.value = removeComma(theForm.price3);
		theForm.action = "/adm/admin_product_write.do";
		theForm.submit();
	}
}

function removeComma(input) {
	return input.value.replace(/,/gi,"");
}

function go_move() {
	var theForm = document.frm;
	theForm.action = "admin_product_list.do";
	theForm.submit();
}

function go_write() {
	location.href="adm/product/productwrite.do";
}
function go_ab() {
	var theForm = document.frm;
	var a = theForm.price2.value.replace(/,/g,"");
	var b = theForm.price1.value.replace(/,/g,"");
	var ab = parseInt(a) - parseInt(b);
	theForm.price3.value = ab;
}

function go_search() {
	var theForm = document.frm;
	theForm.action = "admin_order_list.do";
	theForm.submit();
}

function go_modify() {
	var theForm = document.frm;
	
	if(!theForm.kind.value) {
		alert("상품분류 선택하세요");
		theForm.kind.focus();
	}else if(!theForm.name.value) {
		alert("상품명 입력하세요");
		theForm.name.focus();
	}else if(!theForm.price1.value) {
		alert("원가 입력하세요");
		theForm.price1.focus();
	}else if(!theForm.price2.value) {
		alert("판매가 입력하세요");
		theForm.price2.focus();
	}else if(!theForm.price3.value) {
		alert("이익 입력하세요");
		theForm.price3.focus();
	}else if(!theForm.content.value) {
		alert("상품설명 입력하세요");
		theForm.content.focus();
	}else if(!theForm.image.value) {
		alert("대표이미지 선택하세요");
		theForm.image.focus();
	}else{
		theForm.encoding = "multipart/form-data";
		theForm.price1.value = removeComma(theForm.price1);
		theForm.price2.value = removeComma(theForm.price2);
		theForm.price3.value = removeComma(theForm.price3);
		theForm.action = "admin_product_modify.do";
		theForm.submit();
	}
}
