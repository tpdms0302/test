<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
<%
	String result = request.getParameter("result");
	if(result == null) result = "";
%>
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>계산기</title>
<link rel="stylesheet" href="./css/cal.css" type="text/css">
<script>
	window.onload = function() {

		var para = document.location.href.split("=");
		
		if (para[1] == '') {
			/* document.getElementById('result').value = '계산할 내용이 없습니다'; */
			alert('계산할 내용이 없습니다');
			return;
		}
		
		var result=new Function('"use strict";return (' + para[1]+ ')')();

		$("#result").val(result);

	}

</script>
</head>

<body>
	<script type="text/javascript" src="./js/cal.js"></script>
	<form id="cal2">
		<table border="0" cellspacing="5" bgcolor="#c6e2ff" id="table">
			<tr>
				<td><input type="text" name="screen" id="result" size="48"
					value=""></td>
			</tr>

			<tr>
				<td><input type="button" value=" AC " onclick="del()"
					class="btn" id="colbtn"> <input type="button"
					value=" Back " onclick="back()" class="btn"> <input
					type="button" value=" / " onclick="val('/')" class="btn"></td>
			</tr>

			<tr>
				<td><input type="button" value=" 7 " onclick="val('7')"
					class="btn"> <input type="button" value=" 8 "
					onclick="val('8')" class="btn"> <input type="button"
					value=" 9 " onclick="val('9')" class="btn"> <input
					type="button" value=" * " onclick="val('*')" class="btn"></td>
			</tr>

			<tr>
				<td><input type="button" value=" 4 " onclick="val('4')"
					class="btn"> <input type="button" value=" 5 "
					onclick="val('5')" class="btn"> <input type="button"
					value=" 6 " onclick="val('6')" class="btn"> <input
					type="button" value=" - " onclick="val('-')" class="btn"></td>
			</tr>

			<tr>
				<td><input type="button" value=" 1 " onclick="val('1')"
					class="btn"> <input type="button" value=" 2 "
					onclick="val('2')" class="btn"> <input type="button"
					value=" 3 " onclick="val('3')" class="btn"> <input
					type="button" value=" + " onclick="val('+')" class="btn"></td>
			</tr>

			<tr>
				<td><input type="button" value=" 0 " onclick="val('0')"
					class="btn" id="colbtn"> <input type="button" value=" . "
					onclick="val('.')" class="btn"> <input type="button"
					value=" = " onclick="calculate()" class="btn"></td>
			</tr>



		</table>
	</form>

</body>
</html>