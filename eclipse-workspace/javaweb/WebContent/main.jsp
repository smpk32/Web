<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인 성공</h2>
<h2>${uname}님 환영합니다</h2>
<hr>
아이디 : <%=request.getParameter("id") %> <br>
비밀번호 : <%=request.getParameter("pwd") %>

</body>
</html>