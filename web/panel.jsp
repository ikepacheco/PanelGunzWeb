<%-- 
    Document   : panel
    Created on : 11/01/2020, 01:32:43 AM
    Author     : Demon
--%>
<%@page import="javafx.scene.control.Alert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
            <% if(request.getParameter("login") != null){ %>
        <title>Panel Gunz</title>
            <%} else{ %>
        <title>Bad Request</title>
            <% } %>
    </head>
    <body>
        <%
            Object urn;
            Object pssw;
            boolean logged = false;
            urn = request.getParameter("username");
            pssw = request.getParameter("password");
            if(request.getParameter("login") == null){
                
                
        %>
        <center>
            <div class="alert alert-danger" role="alert" id="msgErrorLogin">
                <h4 class="alert-heading">Bad Request!</h4>
                <p>Please login from website !</p>
                <hr>
                <p class="mb-0"><a href="/Tienda/" class="alert-link">Clic here for redirect.</a></p>
            </div>
        </center>
        <script>
            setTimeout(function(){
               window.location.href = '/Tienda/';
            }, 5000);
        </script>
        <%
            //response.sendRedirect("/Tienda/"); //redirecciona web
            }else{
                if((!urn.equals("demon")) || (!pssw.equals("123") || urn.equals("")) || pssw.equals("")){
                %>
        
        <center>
            <div class="alert alert-danger" role="alert" id="errorLogged">
                Error while logging.<h1>User: <%=urn%> </h1><h1>Password: <%=pssw%></h1>
            </div>
        </center>
        <script>
            setTimeout(function(){
               window.location.href = '/Tienda/';
            }, 5000);
        </script>
        <%
                }else{
                    logged = true;
                    if(logged){
                    session.setAttribute("username", "demon");
                    Object obj = session.getAttribute("username");
        %>
        <h1>Hello <a href="accounts.jsp"><%=obj%>!</a></h1>
        <%
                    }
                }
            }
        %>
    </body>
</html>
