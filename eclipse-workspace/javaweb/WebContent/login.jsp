<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%request.setCharacterEncoding("utf-8"); %>
<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals("hong")&&pwd.equals("1234")){
		request.setAttribute("uname", "홍길동");
		pageContext.forward("main.jsp");
		//response.sendRedirect("main.jsp");
	}else{
		
		response.sendRedirect("login_form.html");
	}
%>