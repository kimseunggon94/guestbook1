
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%
	Date time = new Date();
	SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
	String time1 = format1.format(time);
	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents= request.getParameter("contents");
	String reg_date = request.getParameter(time1);
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	vo.setReg_date(reg_date);

	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>

