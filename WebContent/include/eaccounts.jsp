<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>
<body>

<div class="card mx-auto w-95 border-secondary" style="margin-top: 40px;">
		<h5 class="card-header h5 bg-secondary text-white">Edit Accounts</h5>
		<div class="card-body my-auto text-center">
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change UserID</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="userid" selected>UserID</option>
							<option value="aid">AID</option>
						</select> <br> <label class="sr-only"
							for="inlineFormInputGroupUsername2">Username</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Username/AID">
						</div>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="New Username">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change Password</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="userid" selected>UserID</option>
							<option value="aid">AID</option>
						</select> <br> <label class="sr-only"
							for="inlineFormInputGroupUsername2">Password</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Username/AID">
						</div>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/password.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="New Password">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change Rank</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="userid" selected>UserID</option>
							<option value="aid">AID</option>
						</select> <br> <label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Username/AID">
						</div>
						<select class="custom-select custom-select-lg mb-3">
							<option value="255">255 - Admin</option>
							<option value="254">254 - GameMaster</option>
							<option value="252">252 - Developer</option>
							<option value="253">253 - Banned</option>
							<option value="0" selected>0 - User</option>
							<option value="1">1 - VIP</option>
						</select>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Send Item all Accounts</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Item2All</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/itemid.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="ItemID">
						</div>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/reloj.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Days (0 = permanent)">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Send</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Send Item To Account</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="userid" selected>UserID</option>
							<option value="aid">AID</option>
						</select> <br> <label class="sr-only"
							for="inlineFormInputGroupUsername2">Item2User</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Username/AID">
						</div>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/itemid.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="ItemID">
						</div>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/reloj.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Days (0 = permanent)">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Send</button>
					</div>
				</div>
			</div>
			
		</div>
	</div>

</body>
</html>