<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>
<body>

<div class="card mx-auto w-95 border-secondary" style="margin-top: 40px;">
		<h5 class="card-header h5 bg-secondary text-white">Edit Characters</h5>
		<div class="card-body my-auto text-center">


			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Change Caracter Name</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="New Name">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Change</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Delete Caracter</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Delete</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Delete All Equip Items</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Delete</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Delete All Storage Items</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
								<option value="aid">AID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Delete</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Send Equip Item</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">ItemID</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/itemid.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="ItemID">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Send</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Delete Equip Item</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">ItemID</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/itemid.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="ItemID">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Delete</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Reset Character (Lv: 1 | Exp: 0 | BT: 0)</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Reset</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Change Character Exp</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Exp</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Exp">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Change</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Change Character Level</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Level</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Level">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Change</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
					<h5 class="card-header h5 bg-secondary text-light">Change Character Bounty</h5>
					<div class="card-body my-auto text-center">
						<div class="container w-50">
							<select class="custom-select custom-select-lg mb-3">
								<option value="character" selected>Character</option>
								<option value="cid">CID</option>
							</select>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Character</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
							</div>
							<label class="sr-only"
								for="inlineFormInputGroupUsername2">Bounty</label>
							<div class="input-group mb-2 mr-sm-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<img src="img/login.png" alt="" id="imgLogin" />
									</div>
								</div>
								<input type="text" class="form-control"
									id="inlineFormInputGroupUsername2" placeholder="Bounty">
							</div>
	
							<button type="submit" class="btn btn-primary mb-2">Change</button>
						</div>
					</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change Character Sex</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="character" selected>Character</option>
							<option value="cid">CID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Character</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
						</div>
						<select class="custom-select custom-select-lg mb-3">
							<option value="man" selected>>Man</option>
							<option value="woman">>Woman</option>
						</select>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change Character Hair</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="character" selected>Character</option>
							<option value="cid">CID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Character</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
						</div>
						<select class="custom-select custom-select-lg mb-3">
							<option value="0" selected>>0</option>
							<option value="1">>1</option>
							<option value="2">>2</option>
							<option value="3">>3</option>
						</select>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>
			<div class="card mx-auto w-95" style="margin-top: 40px;">
				<h5 class="card-header h5 bg-secondary text-light">Change Character Face</h5>
				<div class="card-body my-auto text-center">
					<div class="container w-50">
						<select class="custom-select custom-select-lg mb-3">
							<option value="character" selected>Character</option>
							<option value="cid">CID</option>
						</select>
						<label class="sr-only"
							for="inlineFormInputGroupUsername2">Character</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">
									<img src="img/login.png" alt="" id="imgLogin" />
								</div>
							</div>
							<input type="text" class="form-control"
								id="inlineFormInputGroupUsername2" placeholder="Character Name/CID">
						</div>
						<select class="custom-select custom-select-lg mb-3">
							<option value="0" selected>>0</option>
							<option value="1">>1</option>
							<option value="2">>2</option>
							<option value="3">>3</option>
						</select>

						<button type="submit" class="btn btn-primary mb-2">Change</button>
					</div>
				</div>
			</div>


		</div>
</div>

</body>
</html>