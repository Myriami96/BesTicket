<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Elimina...</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">
				<fieldset class="DatiAccesso">
				<h3>Cosa vuoi Eliminare?</h3>
				
					<div id="elimina">
						<button onclick="location.href='eliminaArtista.jsp'">Artista</button></br>
						<button onclick="location.href='eliminaLuogo.jsp'">Luogo</button></br>
						<button onclick="location.href='eliminaConcerto.jsp'">Concerto</button></br>
						<button onclick="location.href='eliminaBiglietto.jsp'">Biglietto</button>
					</div>
				</fieldset>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>