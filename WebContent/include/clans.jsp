<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.*" %>
<%@ page import="model.Conexion" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
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
						<% 	
						Conexion con = new Conexion();
						Connection cn = con.con();
						int i = 1;
						try{
							Statement st = cn.createStatement();
							ResultSet rst = st.executeQuery("SELECT * FROM Clan, Character where Clan.MasterCID = Character.CID AND Clan.DeleteFlag!=1 ORDER BY Clan.CLID");
							while(rst.next()){
								%>
								<tr>
								<th scope='row'><%=i%></th>
								<td><%=rst.getInt("CLID")%></td>
								<td><%=rst.getString("Name")%></td>
								<td><%=rst.getString(27)%></td>
									<td><%=rst.getInt("Point")%></td>
									<td><%=rst.getInt("Wins")%></td>
									<td><%=rst.getInt("Losses")%></td>
									</tr>
									<%
								i++;
							}
						}
						catch(SQLException ex){

							%>
							<tr><td><%=ex%></td></tr>
								<%
						} %>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>