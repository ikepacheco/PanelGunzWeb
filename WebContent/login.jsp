<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<body>
	<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="card mx-auto w-95" style="margin-top: 40px;">
		<h5 class="card-header h5">All Logged Accounts</h5>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">AID</th>
							<th scope="col">Password</th>
							<th scope="col">LastIP</th>
							<th scope="col">LastConnect</th>
						</tr>
					</thead>
					<tbody>
						<%
  for (int i = 1; i <= 20; i++){
	  %>
						<tr>
							<th scope="row"><%=i%></th>
							<td><%=i+7%></td>
							<td>*********</td>
							<td>127.0.0.1</td>
							<td>23/01/2020</td>
						</tr>
						<!-- <tr>
      <th scope="row">2</th>
      <td>1</td>
      <td>demon</td>
      <td>255</td>
      <td>999</td>
      <td>999</td>
      <td>PE</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>sa</td>
      <td>sq</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>1</td>
      <td>demon</td>
      <td>255</td>
      <td>999</td>
      <td>999</td>
      <td>PE</td>
      <td>0</td>
      <td>0</td>
      <td>0</td>
      <td>sa</td>
      <td>sq</td>
    </tr> -->
						<%
    } %>
					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>