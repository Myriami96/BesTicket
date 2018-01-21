<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Oops</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="refresh" content="5;URL=index.jsp">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		<div id="contenitore">

			<header>
			</header>
			
			<section id="info">
				<fieldset class="DatiAccesso">
				<h3>Questa Pagina non Esiste :(</h3>
				
					<span>
						Eh, ci hai provato!! </br>
						Volevi scoprire i nostri segreti più oscuri? Vero? </br>
						Mi spiace, sei incappato in una pagina che non esiste. <br/> <br/>
						Ma non preoccuparti, ci pensiamo noi a riportarti alla Home... Buona Navigazione :).
					</span>
				</fieldset>
			</section>
		</div>
		
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>