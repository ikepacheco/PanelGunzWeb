<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="function.jsp" %> 

<body>
	<div class="row mx-5">
	<div class="card mx-5 w-25 border-secondary" style="margin-top: 40px;">
	  <img class="card-img-top img-thumbnail rounded" src="./img/cardindex.png" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">Conectados : <%=ConnectedPlayers()%></h5>
	    <p class="card-text">Ultima cuenta creada: <%=LastAccount()%></p>
	  </div>
	  <ul class="list-group list-group-flush">
	    <li class="list-group-item">Cuentas creadas: <%=TotalAccount()%></li>
	    <li class="list-group-item">Administradores totales: <%=TotalAccountAdministrators()%></li>
	    <li class="list-group-item">Personajes creados: <%=TotalCharacters()%></li>
	    <li class="list-group-item">Clanes creados: <%=TotalClans()%></li>
	  </ul>
	  <!-- 
	  <div class="card-body">
	    <a href="#!" class="btn btn-primary">Go somewhere</a>
	  </div>
	   -->
	</div>
	<div class="card mx-5 w-25 border-secondary" style="margin-top: 40px;">
	  <img class="card-img-top img-thumbnail rounded" src="./img/cardindex2.png" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">Último donador: <%=LastDonator()%></h5>
	    <p class="card-text">Penultimo donador: <%=Last2Donator()%></p>
	  </div>
	  <ul class="list-group list-group-flush">
	    <li class="list-group-item">Top Donator coins: <%=TopDonatorCoins()%></li>
	    <li class="list-group-item">Top Event coins: <%=TopEventCoins()%></li>
	    <li class="list-group-item">Top kill PJ: <%=TopKillPJ()%></li>
	    <li class="list-group-item">Top Clan: <%=TopClan()%></li>
	  </ul>
	</div>
	<div class="card mx-5 w-25 border-secondary" style="margin-top: 40px;">
	  <img class="card-img-top img-thumbnail rounded" src="./img/cardindex3.png" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">Top PlayTime PJ: <%=TopPlayTimePJ()%></h5>
	    <p class="card-text">PlayTime total Top 1: <%=TopPlayTimeTotalPJ()%></p>
	  </div>
	  <ul class="list-group list-group-flush">
	    <li class="list-group-item">Country Player Top 1 Kills: <%=CountryPlayerTopKills()%></li>
	    <li class="list-group-item">NameColor Top 1 PlayTime PJ: <%=NameColorPlayerTopPT()%></li>
	    <li class="list-group-item">Sex Top 1 Kills PJ: <%=SexTopPlayerKills()%></li>
	    <li class="list-group-item">Top Clan Points: <%=TopClanPoints()%></li>
	  </ul>
	</div>
	</div>
</body>