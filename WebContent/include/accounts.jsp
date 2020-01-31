<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
							<th scope="col">BlueColor</th>
							<th scope="col">GreenColor</th>
							<th scope="col">Question</th>
							<th scope="col">Answer</th>
						</tr>
					</thead>
					<tbody>
						<%
  for (int i = 1; i <= 20; i++){
	  %>
						<tr>
							<th scope="row"><%=i%></th>
							<td><%=i+7%></td>
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