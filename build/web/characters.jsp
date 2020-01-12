<%-- 
    Document   : characters
    Created on : 11/01/2020, 07:18:43 PM
    Author     : Demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 
    <%
        Object obj = session.getAttribute("username");
        
    %>
    <body>
        <h1>Hello <%=obj%>!</h1>
    </body>
</html>
