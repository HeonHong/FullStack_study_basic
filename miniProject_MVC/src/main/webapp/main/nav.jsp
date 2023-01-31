<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<c:if test="${memId==null }">
		<input type ="button" value="로그인" onclick="location.href='/miniProject_MVC/member/loginForm.do'">
		<br>
		<a href="/miniProject_MVC/member/writeForm.do" style="font-size:10pt;">회원가입</a>
	</c:if>	
	<c:if test="${memId!=null }">
		<h3><a href="/miniProject_MVC/member/updateForm.do">${memId}님 로그인</a></h3>
		<br>
		<input type ="button" value="로그아웃" id="logoutBtn">
	</c:if>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> 
<script type="text/javascript">
$('#logoutBtn').click(function(){
	$.ajax({
		url :  '/miniProject_MVC/member/logout.do',
		type : 'post',
		success: function(){
				alert("로그아웃");
				location.href = "/miniProject_MVC/index.jsp";
		},
		error:function(err){
			console.log(err);
		}
		
	})
}	
		)

</script>

	
</div>