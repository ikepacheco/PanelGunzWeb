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
		<div class="container border text-center cont">
			<img src="img/login_icon.png" alt="" id="imgLoginTop" />
			<form method="post" action="Panel">
				<div class="col-auto">
					<label class="sr-only" for="inlineFormInputGroup">Username</label>
					<div class="input-group mb-2">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<img src="img/login.png" alt="" id="imgLogin" />
							</div>
						</div>
						<input type="text" class="form-control" id="inlineFormInputGroup"
							placeholder="Username" name="username">
					</div>
				</div>
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
				<div class="custom-control custom-checkbox" id="rmber">
					<input type="checkbox" class="custom-control-input"
						id="defaultUnchecked" name="remember"> <label
						class="custom-control-label" for="defaultUnchecked">Remember
						Session</label>
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
						<p>Please login from website !</p>
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