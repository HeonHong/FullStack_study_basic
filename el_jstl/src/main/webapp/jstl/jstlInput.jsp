<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method = "get" action="jstlResult.jsp" >
<table border ="1" cellpadding ="5" cellspacing="0">
	<tr>
		<td>이름</td>
		<td><input type = "text" name = "name">
			<div id = "nameDiv"></div>
		</td>
	</tr>
	<tr>
		<td>나이</td>
		<td><input type = "text" name = "age">
		<div id = "nameDiv"></div>
		</td>
	</tr>
	<tr>
		<td>색깔</td>
		<td><select name = "color">
			<option value = "red" >빨강</option>
			<option value = "green">초록</option>
			<option value = "blue">파랑</option>
			<option value = "magenta">보라</option>
			<option value = "cyan">하늘</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td>취미</td>
		<td><input type = "checkbox" name = "hobby" id = "hobby1" value="독서"/>
			<label for = "hobby1">독서</label>
			<input type = "checkbox" name = "hobby" id = "hobby2" value="영화"/>
			<label for = "hobby2">영화</label>
			<input type = "checkbox" name = "hobby" id = "hobby3" value="음악"/>
			<label for = "hobby3">음악</label>
			<input type = "checkbox" name = "hobby" id = "hobby4" value="게임"/>
			<label for = "hobby4">게임</label>
			<input type = "checkbox" name = "hobby" id = "hobby5" value="쇼핑"/>
			<label for = "hobby5">쇼핑</label>
		</td>
	</tr>

	<tr>
		<td colspan = "2" align = "center">
		<input type = "submit" value = "SEND">
		<input type = "reset" value = "CANCEL">
		</td>
 	<tr>
</table>
</form>
</body>


</html>