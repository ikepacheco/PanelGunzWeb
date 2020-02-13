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
		<h5 class="card-header h5 bg-secondary text-white">All Accounts</h5>
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
					<% 	
						Conexion con = new Conexion();
						Connection cn = con.con();
						int i = 1;
						try{
							Statement st = cn.createStatement();
							ResultSet rst = st.executeQuery("SELECT * FROM Account");
							while(rst.next()){
								%>
								<tr>
								<th scope='row'><%=i%></th>
								<td><%=rst.getInt("AID")%></td>
								<td><%=rst.getString("UserID")%></td>
								<td><%=rst.getInt("UGradeID")%></td>
									<td><%=rst.getString("DonatorCoins")%></td>
									<td><%=rst.getString("EventCoins")%></td>
									<td><%=rst.getString("Country")%></td>
									<td><%=rst.getInt("RedColor")%></td>
									<td><%=rst.getInt("GreenColor")%></td>
									<td><%=rst.getInt("BlueColor")%></td>
									<td><%=rst.getString("sq")%></td>
									<td><%=rst.getString("sa")%></td>
									</tr>
									<%
								i++;
							}
						}
						catch(SQLException ex){

							%>
							<tr><td><%=ex%></td></tr>
								<%
						}
						
  //for (int i = 1; i <= 20; i++){
	  %>
						<!-- <tr>
							<th scope="row"></th>
							<td></td>
							<td>demon</td>
							<td>255</td>
							<td>999</td>
							<td>999</td>
							<td>PE</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>sq</td>
							<td>sa</td>
						</tr> -->
						
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>