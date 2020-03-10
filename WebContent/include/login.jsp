<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="function.jsp" %> 
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<body>
	<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="card mx-auto w-95 border-secondary" style="margin-top: 40px;">
		<h5 class="card-header h5 bg-secondary text-white">All Logged Accounts</h5>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">UserID</th>
							<th scope="col">AID</th>
							<th scope="col">Password</th>
							<th scope="col">LastIP</th>
							<th scope="col">LastConnect</th>
						</tr>
					</thead>
					<tbody>
						<%=viewAllLogins()%>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>