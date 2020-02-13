<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<style type="text/css">
#cal{margin-top:30px; margin-left:30px;}
.btn{font-weight:bold; font-size:10pt; background-color:white; padding-top:3px;width:80px;height:50px;}
#result{height:40px; border:none}
#table{ border:1px solid;}
#width{width:166px;}
</style>

<script type="text/javascript">

/* 계산 해주는 함수 */
function calculate() {
   if(result.value == ''){
	  /*  document.getElementById('result').value = '계산할 내용이 없습니다'; */
         alert('계산할 내용이 없습니다');
         return;
    }
   result.value = eval(result.value);
}

/* 텍스트 값을 초기화  해주는 함수*/
function del()
{
	result.value = "";

}

/* 숫자 하나를 삭제 해주는 함수*/
function back()
{
	result.value = result.value.substring(0, result.value.length-1);
}

/* 숫자를 클릭했을때 입력 해주는 함수*/
function val(num)
{
	/*
	
	for(int i=0; i++;i<=result.value.length){
		String a,b;
		a=charAt(i);
		b=charAt(i+1);
		if(Character.isDigit(a)==false && Character.isDigit(b)==false){
			 alert('연산자가 중복 되었습니다.');
		}else{
			result.value = result.value + num;
		}
	} */
	result.value = result.value + num; 
}

</script>


</head>
<body>
<form id="cal">
<table border="0" cellspacing="5" bgcolor="#c6e2ff" id="table">
<tr>
<td><input type="text" name="screen" id="result" size="48" value=""></td>
</tr>

<tr>
<td>
<input type="button" value=" AC " onclick="del()" class="btn" id="width">
<input type="button" value=" Back " onclick="back()" class="btn">
<input type="button" value=" / " onclick="val('/')" class="btn">

</td>
</tr>

<tr>
<td>
<input type="button" value=" 7 " onclick="val('7')" class="btn">
<input type="button" value=" 8 " onclick="val('8')" class="btn">
<input type="button" value=" 9 " onclick="val('9')" class="btn">
<input type="button" value=" * " onclick="val('*')" class="btn">
</td>
</tr>

<tr>
<td>
<input type="button" value=" 4 " onclick="val('4')" class="btn">
<input type="button" value=" 5 " onclick="val('5')" class="btn">
<input type="button" value=" 6 " onclick="val('6')" class="btn">
<input type="button" value=" - " onclick="val('-')" class="btn">
</td>
</tr>

<tr>
<td>
<input type="button" value=" 1 " onclick="val('1')" class="btn">
<input type="button" value=" 2 " onclick="val('2')" class="btn">
<input type="button" value=" 3 " onclick="val('3')" class="btn">
<input type="button" value=" + " onclick="val('+')" class="btn">
</td>
</tr>

<tr>
<td>
<input type="button" value=" 0 " onclick="val('0')" class="btn" id="width">
<input type="button" value=" . " onclick="val('.')" class="btn">
<input type="button" value=" = " onclick="calculate()" class="btn">

</td>
</tr>



</table>
</form>

</body>
</html>