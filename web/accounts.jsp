<%-- 
    Document   : accounts
    Created on : 11/01/2020, 07:09:57 PM
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
        <% try{
            if (!obj.equals(null))
        {
        %>
        <h1>Hello <a href="/Tienda/panel.jsp"><%=obj%>!</a></h1>
        <%
            }
else{
        
}
}catch(Exception e){
%>
        <h1>Not session validate!</a></h1>
        <%}
            session.invalidate();
        %>
    </body>
</html>
