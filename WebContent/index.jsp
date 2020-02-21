<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<title>Panel Gunz by Demon</title>
</head>
<body id="bdy">
	<div class="vertical-center">
		<div class="container text-center cont" id="ctnrprincipal">
			<img src="img/login_icon.png" alt="" id="imgLoginTop" />
			<form method="post" action="Panel">
				
				<% 
					HttpSession usr_recordar = request.getSession();
					String _username_recordar = (String)usr_recordar.getAttribute("username_recordar");
					
					if(_username_recordar == null){
						
				%>
				
				<div class="col-auto">
					<label class="sr-only" for="inlineFormInputGroup">Username</label>
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<img src="img/login.png" alt="" id="imgLogin" />
							</div>
						</div>
						<input type="text" class="form-control" id="inlineFormInputGroup"
							placeholder="Username" name="username" value="${sessionScope.username_recordar}">
					</div>
				</div>
				
				<%
					}else{
				%>
				
				<div class="col-auto">
					<label class="sr-only" for="inlineFormInputGroup">Username</label>
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<img src="img/login.png" alt="" id="imgLogin" />
							</div>
						</div>
						<input type="text" class="form-control" id="inlineFormInputGroup"
							placeholder="Username" name="username" value="${sessionScope.username_recordar}">
					</div>
				</div>
				
				<%
					}
				%>
				
				<div class="col-auto">
					<label class="sr-only" for="inlineFormInputGroup">Password</label>
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<img src="img/password.png" alt="" id="imgLogin" />
							</div>
						</div>
						<input type="password" class="form-control"
							id="inlineFormInputGroup" placeholder="Password" name="password">
					</div>
				</div>
				<div class="custom-control custom-checkbox" id="rmber" style="display: none;">
					<input type="checkbox" class="custom-control-input"
						id="defaultUnchecked" name="remember" style="display: none;" checked> <label
						class="custom-control-label" for="defaultUnchecked"  style="display: none;">Remember
						Session</label>
				</div>
				<div class="custom-control custom-checkbox my-1 mr-sm-2" id="rmber">
			    	<input type="checkbox" class="custom-control-input" id="customControlInline" name="username_recordar">
			    	<label class="custom-control-label" for="customControlInline">Remember Username</label>
			    </div>
				<button type="submit" class="btn btn-primary" id="btnLogin">Submit</button>

				<%
                    HttpSession urn = request.getSession();
                	String obj = (String)urn.getAttribute("error");
                	if(obj != null){
                    %>


				<center>
					<div class="alert alert-danger" role="alert">
						<h4 class="alert-heading">${error }</h4>
						<p>Please login from website ! <br>If you are not Admin you cant login here</p>
						<hr><%=obj %></hr>
						<p class="mb-0">
							<a href="/PanelGunzWeb/" class="alert-link">Clic here for
								redirect.</a>
						</p>
					</div>
				</center>
				<%} %>
			</form>
		</div>
	</div>
</body>
</html>