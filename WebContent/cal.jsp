<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>계산기</title>
<link rel="stylesheet" href="./css/cal.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function(){

	//
	// $('#cal').submit(function(){
	//
	// 	var result =  $("#result").val();
	// 	window.open("cal2.jsp?result=" + result.value, "",
	// 	"width=500,height=500");
	//
	// 	return false;
	// });

	$("#colbtn").click(function(){
		doItem();
	})


 });

function doItem() {
	$.ajax({
		url				: "./TestServlet.do",
		//	dataType	: h,
		success: function(data) {
			$("#result").val(data);
		},
		error: function(error) {
			//	deferred.reject(error);
		}
	});
}
</script>
</head>

<body>
	<script type="text/javascript" src="./js/cal.js"></script>
	<form id="cal">
		<table border="0" cellspacing="5" bgcolor="#c6e2ff" id="table">
			<tr>
				<td><input type="text" name="screen" id="result" size="48"
					value="" ></td>
			</tr>

			<tr>
				<td><input type="button" value=" AC " onclick="del()"
					class="btn" id="colbtn"> <input type="button" value=" Back "
					onclick="back()" class="btn"> <input type="button"
					value=" / " onclick="val('/')" class="btn"></td>
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
					class="btn" id="colbtn">

					<input type="button" value=" . "
					onclick="val('.')" class="btn"> 
					
					
					<input type="submit"
					value=" = "  class="btn" id="btn_sub">
					
					</td>
			</tr>



		</table>
	</form>

</body>
</html>