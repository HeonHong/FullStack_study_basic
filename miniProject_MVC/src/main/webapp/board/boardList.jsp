<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#pagingDiv {
	/* border: 1px solid red; */
	text-align: center;
	width: 950px;
	margin-top: 10px;
	display : inline-block;
	/* 그냥 바깥 이미지 태그로 했을 경우 */
	/* 둘 다 float걸기 */
	/* 만약에 밖에 div태그 하나 더 추가할 거면 인라인 블록으로 지정할 것 */
	/* 대신 마지막에 clear both 해줘야함 */
}

#currentPaging {
	border: 1px solid blue;
	padding: 5px 10px;
	margin: 2px;
	color: red;
	text-decoration: underline;
	cursor: pointer;
}

#paging {
	/* border: 1px solid blue; */
	cursor: pointer;
	padding: 5px 10px;
	margin: 2px;
}

#table td{
 color:black;
 text-decoration : none;
}
#table td:hover{
 color:green;
 text-decoration : underline;
}

div > button{
float: left;
}

a.subjectA:link{ color : black; text-decoration : none;}
a.subjectA:visited{color : black; text-decoration : none;}
a.subjectA:hover{color : green; text-decoration : underline;}
a.subjectA:active{color : black; text-decoration : none;}
</style>
</head>
<body>

<input type="text" id="pg" value="${pg }">
<!-- 중요 이거는 js에서 onload를 할 때 boardlistservice로 pg값을 보내주기 위함이다. 동적처리 하려면 jstl if 지워야한다. -->
<input type="text" id="memId" value="${memId }">

	<table id = "boardListTable" border="1" cellpadding="5" frame="hsides" rules="rows">
		<tr>
			<th style="width: 100px">글번호</th>
			<th style="width: 400px">제목</th>
			<th style="width: 100px">작성자</th>
			<th style="width: 100px">조회수</th>
			<th style="width: 200px">작성일</th>
		</tr>
	
		<!-- 동적처리(실행을 할 때마다 데이터가 달라짐)(실행하면서 바로 데이터를 붙여줌) 근데 왜 비동기?? -->
		<!-- 여기로 데이터가 계속 붙는다. -->
		
	</table>

	<div style="display: inline-block;">
		<div id="pagingDiv"></div>
	</div>

<script type="text/javascript">
function boardPaging(pg) {
	location.href = "boardList.do?pg=" + pg;
}

function isLogin(id, seq, pg){
	if(id == 'null') 
		alert("먼저 로그인하세요");
	//else
		//location.href="boardView.jsp?seq=" + seq + "&pg="+pg;
}
</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../js/boardList.js"></script>
</body>
</html>













