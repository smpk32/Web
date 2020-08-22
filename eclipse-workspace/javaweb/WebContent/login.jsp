<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="javaweb.*,java.util.*"%>
	<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="member" class="java.util.HashMap" scope="application" />
<%

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	/* Map<String,Member> map = (Map<String,Member>)application.getAttribute("member"); */
	Member m = (Member)member.get(id);
	
	if(id.equals(m.getId())&&pwd.equals(m.getPwd())){
		session.setAttribute("uname", m.getUname());
		pageContext.forward("main.jsp");
		//response.sendRedirect("main.jsp");
	}else{
		
		response.sendRedirect("login_form.html");
	}
%>