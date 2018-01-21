<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Crea Artista</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		<script src="Js/registrazione.js"></script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">
				<form method="post" onSubmit="return validateFormAggiungiBiglietti(this);" action="RegArtista">
					<fieldset class="DatiAccesso">
					
						<h3>Registrazione Artista</h3>
					<%
						String err=request.getParameter("errore");
						if(err != null)
						{
						%><span style="color: red; text-size:20px; font-weight: bold;"><%= err %></span>
						<%} %>
						<div class="row">				
							<label>Nome</label>
							<div class="fields">	
								<input type="text" name="nome" value="" minlenght="2" maxlenght="30" placeholder="Inserisci Nome Artista" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Genere</label>
							<div class="fields">
							 	<input type="text" name="genere" value="" minlenght="2" maxlenght="30" placeholder="Inserisci Genere" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Nazionalità</label>
							<div class="fields">	
								<input type="text" name="nazionalita" value="" minlenght="2" maxlenght="30" placeholder="Inserisci Nazionalità" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Tipo</label>
							<div class="fields">	
								<input type="text" name="tipo" value="" minlenght="2" maxlenght="30" placeholder="Inserisci Tipo" required>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Avanti">
							<input id="reset" type="reset" value="Reset">
							<input id="reset" type="button" onclick="location.href='creaLocalita.jsp'" value="Non registrare Artista">
						</div>	
					</fieldset>
				</form>
			</section>
			
		</div>
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>