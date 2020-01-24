<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>
<body>
	<div class="card mx-auto w-95" style="margin-top: 40px;">
		<h5 class="card-header h5">Edit Event Coins</h5>
		<div class="card-body my-auto text-center">

			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Send Event
					Coins</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option selected>Select Coins</option>
							<% for(int i = 1; i<=9; i++){ %>
							<option value="<%=i %>"><%=i %> Coins
							</option>
							<%}%>
							<% for(int i = 10; i<=100; i+=10){ %>
							<option value="<%=i %>"><%=i %> Coins
							</option>
							<%}%>
							<% for(int i = 200; i<=1000; i+=100){ %>
							<option value="<%=i %>"><%=i %> Coins
							</option>
							<%}%>
						</select> <br> <label class="sr-only"
							for="inlineFormInputGroupUsername2">Username</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Username">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Submit</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header bg-secondary text-light h5">Change
					Event Coins</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<label class="sr-only" for="inlineFormInputGroupUsername2">Event
							Coins</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="<%=request.getContextPath()%>/img/money.png"
										alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Event Coins">
						</div>
						<br> <label class="sr-only"
							for="inlineFormInputGroupUsername2">Username</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Username">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Submit</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>