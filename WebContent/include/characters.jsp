<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
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
					</thead>
					<tbody>
						<%=viewCharacters()%>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>