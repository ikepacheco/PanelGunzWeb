<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<body>
	<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="card mx-auto  w-95" style="margin-top: 40px;">
		<h5 class="card-header h5">All Characters</h5>
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
						<%
  for (int i = 1; i <= 20; i++){
	  %>
						<tr>
							<th scope="row"><%=i%></th>
							<td><%=i+5%></td>
							<td><%=i+7%></td>
							<td>demon</td>
							<td>Man</td>
							<td>99</td>
							<td>999999</td>
							<td>999999</td>
							<td>35</td>
							<td>500</td>
							<td>400</td>
							<td><%=i %></td>
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