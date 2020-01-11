<%-- 
    Document   : index
    Created on : 11/01/2020, 12:29:38 AM
    Author     : Demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Gunz</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bdy">
        <div class="vertical-center">
            <div class="container border text-center cont">
                <img src="img/login_icon.png" alt="" id="imgLoginTop"/>
                <form id="frmLogin" method="post" action="panel.jsp">
                    <div class="col-auto">
                        <label class="sr-only" for="inlineFormInputGroup">Username</label>
                        <div class="input-group mb-2">
                          <div class="input-group-prepend">
                            <div class="input-group-text"><img src="img/login.png" alt="" id="imgLogin"/></div>
                          </div>
                          <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Username" name="username">
                        </div>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="inlineFormInputGroup">Password</label>
                        <div class="input-group mb-2">
                          <div class="input-group-prepend">
                              <div class="input-group-text"><img src="img/password.png" alt="" id="imgLogin"/></div>
                          </div>
                          <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password" name="password">
                        </div>
                    </div>
                    <center><button type="submit" class="btn btn-primary" id="btnLogin" name="login">Submit</button></center>
                </form>
            </div>
        </div>
    </body>
</html>
