<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Panel Gunz by Demon</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="table-responsive">
		<div class="d-flex justify-content-center border bg-light">
			<div class="btn-group btn-group-toggle" data-toggle="buttons">
				<label class="btn btn-secondary active bg-dark"> <input
					type="radio" name="options" id="option1" autocomplete="off" checked
					disabled>Bienvenido ${sessionScope.username}
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option2" autocomplete="off"
					onClick="location.href='Panel'">Inicio
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option3" autocomplete="off"
					onClick="location.href='Panel?action=accounts'">Accounts
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=characters'">Characters
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=login'">Login
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=clans'">Clans
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option3" autocomplete="off"
					onClick="location.href='Panel?action=eaccounts'">Edit
					Accounts
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=echaracters'">Edit
					Characters
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=eclans'">Edit Clans
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=dcoins'">DonatorCoins
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=ecoins'">EventCoins
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option4" autocomplete="off"
					onClick="location.href='Panel?action=buscar'">Buscar
				</label> <label class="btn btn-secondary"> <input type="radio"
					name="options" id="option5" autocomplete="off"
					onClick="location.href='Panel?action=logout'">Logout
				</label>
			</div>
		</div>
</div>
</body>
</html>