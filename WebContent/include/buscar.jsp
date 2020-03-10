<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="function.jsp" %> 
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="card mx-auto w-95 border-secondary" style="margin-top: 40px;">
		<h5 class="card-header h5 bg-secondary text-white">Search Account</h5>
		<div class="container p-3 my-3 bg-dark text-white rounded" style="max-width: 480px !important; max-height: 70px !important; padding-bottom: -110px;">
			<form>
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <label class="sr-only" for="inlineFormInput">Name</label>
			      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" style="margin-top: -8px !important">
			        <option selected value="0">AID</option>
			        <option value="1">UserID</option>
			        <option value="2">Character</option>
			      </select>
			    </div>
			    <div class="col-auto">
			      <label class="sr-only" for="inlineFormInputGroup">Username</label>
			      <div class="input-group mb-2">
			        <div class="input-group-prepend">
			          <div class="input-group-text">@</div>
			        </div>
			        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Username">
			      </div>
			    </div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary mb-2">Submit</button>
			    </div>
			  </div>
			</form>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">AID</th>
							<th scope="col">UserID</th>
							<th scope="col">UGrade</th>
							<th scope="col">DCoins</th>
							<th scope="col">ECoins</th>
							<th scope="col">Country</th>
							<th scope="col">RedColor</th>
							<th scope="col">GreenColor</th>
							<th scope="col">BlueColor</th>
							<th scope="col">Question</th>
							<th scope="col">Answer</th>
						</tr>
					</thead>
					<tbody>
						<%=viewAccounts()%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%
	String serverIP="localhost";
	String portSQL="1433";
	String username="sa";
	String password="123456789";
	String database="GunzDB";
	String url = "jdbc:sqlserver://" + serverIP + ":" + portSQL + ";databaseName=" + database;
	
	out.println(url);
    %>
</body>
</html>