<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>
<body>

<div class="card mx-auto w-95 border-secondary" style="margin-top: 40px;">
		<h5 class="card-header h5 bg-secondary text-white">Edit Clans</h5>
		<div class="card-body my-auto text-center">
		
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Update Ranking Clans</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Username</label>
							<div class="card">
							  <div class="card-body">
								This will update ranking clans, it may delay some time if there many clans.
							  </div>
							</div><br>
							<button type="submit" class="btn btn-primary mb-2">Update</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Create Clan</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Clan Name">
						</div>
						<select class="custom-select custom-select-lg mb-3">
							<option value="character" selected>Character</option>
							<option value="cid">CID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Master Name/CLID">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Create</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Delete Clan</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="clanname" selected>Clan Name</option>
							<option value="clid">CLID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Clan Name/CLID">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Delete</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Reset Clan Points</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="clanname" selected>Clan Name</option>
							<option value="clid">CLID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Clan Name/CLID">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Reset</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Reset All Clans</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Username</label>
						<div class="card">
						  <div class="card-body">
							<b>WARNING: </b>This cannot be reverted.
						  </div>
						</div><br>
						<button type="submit" class="btn btn-primary mb-2">Reset</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Delete Clan Emblem</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="clanname" selected>Clan Name</option>
							<option value="clid">CLID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Clan Name/CLID">
						</div>

						<button type="submit" class="btn btn-primary mb-2">Delete</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Change Clan Stats</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="clanname" selected>Clan Name</option>
								<option value="clid">CLID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Rank</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Clan Name/CLID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Rank</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Wins">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Rank</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Losses">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Rank</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Points">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Change</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change Clan Member Rank</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="clanname" selected>Member Name</option>
							<option value="cid">CID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Rank</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Member Name/CID">
						</div>
						<select class="custom-select custom-select-lg mb-3">
							<option value="normal" selected>>Normal</option>
							<option value="admin">>Administrator</option>
						</select>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>
		
		</div>
</div>
</body>