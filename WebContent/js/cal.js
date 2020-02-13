/**
 * 
 */


	/* 계산 해주는 함수 */
	function calculate() {
		if (result.value == '') {
			/*  document.getElementById('result').value = '계산할 내용이 없습니다'; */
			alert('계산할 내용이 없습니다');
			return;
		}
		result.value = eval(result.value);
	}

	/* 텍스트 값을 초기화  해주는 함수*/
	function del() {
		result.value = "";

	}

	/* 숫자 하나를 삭제 해주는 함수*/
	function back() {
		result.value = result.value.substring(0, result.value.length - 1);
	}

	/* 숫자를 클릭했을때 입력 해주는 함수*/
	function val(num)

	{

		 result.value = result.value + num; 

	}

