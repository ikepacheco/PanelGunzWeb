<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.jsp.JspWriter" %>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>
<body>
	<%
	String serverIP="localhost";
	String portSQL="1433";
	String username="sa";
	String password="123456789";
	String database="GunzDB";
	String url = "jdbc:sqlserver://" + serverIP + ":" + portSQL + ";databaseName=" + database;
	
	out.println(url);
    %>
</body>
</html>