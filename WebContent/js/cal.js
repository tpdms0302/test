/**
 * 
 */

/* var result=getParameter.result; */

/* 계산 해주는 함수 */
function calculate() {
	var result = document.getElementById('result');
	if (result.value == '') {
		/* document.getElementById('result').value = '계산할 내용이 없습니다'; */
		alert('계산할 내용이 없습니다');
		return;
	}
	result.value = new Function('"use strict";return (' + result.value + ')')();

}

/* 텍스트 값을 초기화 해주는 함수 */
function del() {
	var result = document.getElementById('result');
	result.value = "";

}

/* 숫자 하나를 삭제 해주는 함수 */
function back() {
	var result = document.getElementById('result');
	result.value = result.value.substring(0, result.value.length - 1);
}

/* 숫자를 클릭했을때 입력 해주는 함수 */
function val(num)

{
	var result = document.getElementById('result');
	result.value = result.value + num;
}



 /*팝업창으로 띄우는 함수 */
function openCalDup() {
	
	var result = document.getElementById('result');
	if (result.value == '') {
		 document.getElementById('result').value = '계산할 내용이 없습니다'; 
		alert('계산할 내용이 없습니다');
		return;
	}
	result.value = new Function('"use strict";return (' + result.value + ')')();
	
	window.open("./cal2.jsp?result=" + result.value, "",
			"width=500,height=500");
}


/*$(document).ready(function () {
    $('#btn_sub').click(function () {
    	var result = document.getElementById('result');
    	if (result.value == '') {
    		 document.getElementById('result').value = '계산할 내용이 없습니다'; 
    		alert('계산할 내용이 없습니다');
    		return;
    	}
    	result.value = new Function('"use strict";return (' + result.value + ')')();
    	
    	window.open("./cal2.jsp?result=" + result.value, "",
    			"width=500,height=500");
    	
    	$()
          });
  });
*/







