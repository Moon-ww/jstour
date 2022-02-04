function go_cart() {
	document.formm.action = "cartinsert.do";
	document.formm.submit();
	
}

function goCartDelete() {
	
	var count = 0;
	
	if(document.formm.cseq.length == undefined) {
		if(document.formm.cseq.checked == true) {
			count++;
		}
	}
	
	for(var i=0; i<document.formm.cseq.length; i++) {
		if(document.formm.cseq[i].checked == true) {
			count++;
		}
	}
	if(count == 0) {
		alert("삭제항목선택");
	}else {
		document.formm.action = "cartDelete.do";
		document.formm.submit();
	}
}

	function goOrderinsert() {
		document.formm.action="orderinsert.do";
		document.formm.submit();
	}
	

	
	