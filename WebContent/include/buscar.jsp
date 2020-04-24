<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="function.jsp" %> 
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<%
	Object usuario = null;
	Object type = null;
	usuario = request.getParameter("usuario");
	type = request.getParameter("type");
%>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="card mx-auto w-95 border-secondary" style="margin-top: 40px;">
		<h5 class="card-header h5 bg-secondary text-white">Search Account</h5>
		<div class="container p-3 my-3 bg-dark text-white rounded" style="max-width: 480px !important; max-height: 70px !important; padding-bottom: -110px;">
			<form method="get" action="Panel">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			    	<input type="text" name="action" value="buscar" style="display:none;">
			      <label class="sr-only" for="inlineFormInput">Name</label>
			      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" style="margin-top: -8px !important" name="type">
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
			        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Username" name="usuario">
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
					<% 
					
					if(type != null){
					
					switch(type.toString()){ 
					case "0":
					case "1":
					%>
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
					<%
						break;
					case "2":
						%>
						<tr>
							<th scope="col">#</th>
							<th scope="col">CID</th>
							<th scope="col">AID</th>
							<th scope="col">Name</th>
							<th scope="col">Sex</th>
							<th scope="col">Level</th>
							<th scope="col">XP</th>
							<th scope="col">BP</th>
							<th scope="col">PlayTime(days)</th>
							<th scope="col">Kills</th>
							<th scope="col">Deaths</th>
							<th scope="col">Ranking</th>
						</tr>
						<%
						break;
					default:
						%>
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
						<%
							break;
					} 	
					}
					else{
						%>
						
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
						<%
						
					}
					%>
					</thead>
					<tbody>
						<%=searchAccount(usuario,type)%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%
	
    %>
</body>
</html>