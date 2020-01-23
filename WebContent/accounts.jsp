<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body>
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>

	<div class="card mx-auto" style="width: 95%; margin-top: 40px;">
	  <h5 class="card-header h5">All Accounts</h5>
	  <div class="card-body">
	    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">AID</th>
      <th scope="col">UserID</th>
      <th scope="col">UGrade</th>
      <th scope="col">Name</th>
      <th scope="col">DonatorCoins</th>
      <th scope="col">EventCoins</th>
      <th scope="col">Country</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
	  </div>
	</div>
	
	
</body>