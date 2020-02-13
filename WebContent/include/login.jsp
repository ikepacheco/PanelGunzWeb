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
						<% 	
						Conexion con = new Conexion();
						Connection cn = con.con();
						int i = 1;
						try{
							Statement st = cn.createStatement();
							ResultSet rst = st.executeQuery("SELECT * FROM Login order by UserID asc");
							while(rst.next()){
								%>
								<tr>
								<th scope='row'><%=i%></th>
								<td><%=rst.getString("UserID")%></td>
								<td><%=rst.getInt("AID")%></td>
								<td>**********</td>
								<td><%=rst.getString("LastIP")%></td>
									<td><%=rst.getString("LastConnDate")%></td>
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