<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%

String rollNo = request.getParameter("rollNo");
String infosec = request.getParameter("infosec");
String webserv = request.getParameter("webserv");
String stqa = request.getParameter("stqa");
String ai = request.getParameter("ai");
String gp = request.getParameter("gp");

try{
	
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into result values ('"+rollNo+"','"+infosec+"','"+webserv+"','"+stqa+"','"+ai+"','"+gp+"')");
	response.sendRedirect("adminHome.jsp");
	
	
}
catch(Exception e){
	out.println(e);
}

%>