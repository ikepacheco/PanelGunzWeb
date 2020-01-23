<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<title>PanelGunz by Demon</title>
</head>
<body>
<%
HttpSession urn = request.getSession();
String objErr = (String)urn.getAttribute("error");
String objUsr = (String)urn.getAttribute("username");
String act = (String)request.getParameter("action");
if(objErr != null || objUsr == null){
		
%>

		<center>
		<div class="alert alert-danger" role="alert" id="msgErrorLogin">
                <h4 class="alert-heading">Bad Request!</h4>
                <p>Please login from website !</p>
                <hr>
                <p class="mb-0"><a href="/PanelGunzWeb/" class="alert-link">Clic here for redirect.</a></p>
        </div>
		</center>

<%
	}
	else{

		//request.getRequestDispatcher("menu.jsp").forward(request, response);
			
				%>
				<jsp:include page="menu.jsp"></jsp:include>
				<jsp:include page="indexpage.jsp"></jsp:include>
				<%
			
	}
	
%>
</body>
</html>