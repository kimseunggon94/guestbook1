
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	String no =request.getParameter("no");	
	String password = request.getParameter("password");
	String del_password =new GuestbookDao().getpassword(no);
	
	if(del_password.equals(password)){
		new GuestbookDao().delete(no);
	}

	response.sendRedirect(request.getContextPath());
%>