<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javaweb.*,java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="m" class="javaweb.Member" />
<jsp:useBean id="member" class="java.util.HashMap" scope="application" />
<jsp:setProperty property="*" name="m"/>

<%
	member.put(m.getId(),m);
	/* Map<String,Member> map = new HashMap<>();
	map.put(m.getId(),m);
	application.setAttribute("member", map); */
	
	response.sendRedirect("login_form.html");
%>