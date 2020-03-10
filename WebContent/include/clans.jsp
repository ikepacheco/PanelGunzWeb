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
		<h5 class="card-header h5 bg-secondary text-white">All Characters</h5>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">CLID</th>
							<th scope="col">Name</th>
							<th scope="col">Master</th>
							<th scope="col">Points</th>
							<th scope="col">Win</th>
							<th scope="col">Loses</th>
						</tr>
					</thead>
					<tbody>
						<%=viewClans()%>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>