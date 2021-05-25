<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	padding: 10px;
	background: #f1f1f1;
}

/* Header/Blog Title */
.header {
	padding: 30px;
	text-align: center;
	background: white;
}

.header h1 {
	font-size: 50px;
}

/* Style the top navigation bar */
.topnav {
	overflow: hidden;
	background-color: #333;
}

/* Style the topnav links */
.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
	float: left;
	width: 75%;
}

/* Right column */
.rightcolumn {
	float: left;
	width: 25%;
	background-color: #f1f1f1;
	padding-left: 10px;
}

/* Fake image */
.img {
	background-color: white;
	width: 100%;
	padding: 10px;
}

/* Add a card effect for articles */
.card {
	background-color: white;
	padding: 20px;
	margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: #800000;
	padding: 10px 40px;
	border: solid 1px #0076a3;
	background: white;
}
/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
	margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
	.leftcolumn, .rightcolumn {
		width: 100%;
		padding: 0;
	}
}
.logo {
	float: left;
	width: 2%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
}
/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
	.topnav a {
		float: none;
		width: 100%;
	}
}
</style>
</head>
<body>

	<div class="header">
	<div class="logo">
			<div class="img">
				<a title="Clicca per andare alla home" href="HomePage.jsp"><img src="images/logo.png" alt="logo" style="height: 120px; "></a>
			</div>
		</div>
		<h1>
			<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>
		</h1>
		<p Style="color: #800000">Sito di e-commerce incentrato sulle
			specialita' gastronomiche del sud Italia.</p>
	</div>

	<div class="topnav">
	<a href="HomePage.jsp" Style="color: white">HomePage</a> 
		<a href="ServletDati" Style="color: white">Catalogo</a> <a
			href="ChiSiamo.jsp" Style="color: white">Chi Siamo</a> <a
			href="Contatti.jsp" Style="color: white">Contatti</a> <a
			href="Recensioni.jsp" Style="color: white">Recensioni</a> <a
			href="LoginPagee.jsp" style="float: right" Style="color:white">Login</a>
		<a href="Registrazione.jsp" style="float: right" Style="color:white">Registrati</a>
	</div>
	

	<div class="row">
		<div class="leftcolumn">
			<div class="card">

				<form action="RegistrazioneServlet" method="post">

					<fieldset>

						<legend>
							<b Style="color: #800000">Dati Utente </b>
						</legend>

						<p align="center" Style="color: #800000">
							Inserire Nome : <input type="text" name="nome"
								placeholder="Rebecca" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Inserire Cognome : <input type="text" name="cognome"
								placeholder="Di Matteo" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Codice Fiscale : <input type="text" name="cf"
								placeholder="RDM00AOG1" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Email : <input type="email" name="email"
								placeholder="beccadimatteo@gmail.com" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Cellulare : <input type="tel" name="cell"
								placeholder="3894685921" />
						</p>

						<p align="center" Style="color: #800000">
							Inserire nome utente : <input type="text" name="username"
								placeholder="becca12" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Inserire password : <input type="password" name="pwsd"
								placeholder="**********" />
						</p>




					</fieldset>
					<%
						String errore = (String) request.getAttribute("errore");
						if (errore == null) {
							errore = "";
						}
					%>
					<h4><%=errore%>
					</h4>


					


					<fieldset>
					<legend>
						<b Style="color: #800000">Indirizzo </b>
					</legend>
						<p align="center" Style="color: #800000">
							Inserire via : <input type="text" name="via"
								placeholder="Alcide De Gasperi" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Inserire Cap : <input type="text" name="cap" placeholder="84084" />
						</p>
						<p align="center" Style="color: #800000">
							Inserire Citt�: <input type="text" name="citta"
								placeholder="Fisciano" />
						</p>
					</fieldset>


					


					<fieldset>
					<legend>
						<b Style="color: #800000">Metodo Pagamento</b>
					</legend>
						<p align="center" Style="color: #800000">
							Inserire Iban : <input type="text" name="iban"
								placeholder="IT567HN3456777" /><br>
						</p>
						<p align="center" Style="color: #800000">
							Tipologia Carta : <input type="radio" name="tipo" id="mastercard"
								value="MasterCard"> <label for="mastecard">MasterCard</label>
							<input type="radio" name="tipo" id="visa" value="Visa"> <label
								for="visa">Visa</label>

						</p>
						<p align="center" Style="color: #800000">
							Nominativo Intestatario: <input type="text" name="nominativo"
								placeholder="Rebecca Di Matteo" />
						</p>


					</fieldset>
					<p align="right">
						<button id="pulsante" type="submit">Registrati</button>

					</p>



				</form>



			</div>
		</div>

		<div class="rightcolumn">
			<div class="card">
				<h2 Style="color: #800000">Gestisci</h2>

				<button onclick="location.href='mioprofilo.jsp'" id="pulsante"
					type="submit">Vai al mio profilo</button>
				<br> <br>

				<button onclick="location.href='mioordini.jsp'" id="pulsante"
					type="submit">I miei ordini</button>
				<br> <br>


			</div>

		</div>
	</div>

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<a href="#" Style="color: #800000">Metodi Di Pagamento e tempi di
			spedizione</a> <br> <a href="#" Style="color: #800000">Chi Siamo</a>
		<br> <a href="#" Style="color: #800000">Contatti</a> <br>
	</div>

</body>
</html>