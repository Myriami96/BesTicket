<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Crea Località</title>
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
				<form method="post" onSubmit="return validateFormAggiungiLuogo(this);" action="regLuogo">
					<fieldset class="DatiAccesso">
					
						<h3>Registrazione Luogo</h3>
					<%
						String err=request.getParameter("errore");
						if(err != null)
						{
						%><span style="color: red; text-size:20px; font-weight: bold;"><%= err %></span>
						<%} %>
						<div class="row">				
							<label>Città</label>
							<div class="fields">	
								<input type="text" name="citta" value="" minlenght="3" maxlenght="30" placeholder="Inserisci Città" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>CAP</label>
							<div class="fields">
							 	<input type="text" name="cap" maxlength="5" value="" placeholder="Insesci CAP" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Via</label>
							<div class="fields">	
								<input type="text" name="via" value="" minlenght="5" maxlenght="100" placeholder="Inserisci Via" required>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Avanti">
							<input id="reset" type="reset" value="Reset">
							<input id="reset" type="button" onclick="location.href='creaConcerto.jsp'" value="Non registrare Luogo">
						</div>	
					</fieldset>
				</form>
			</section>
			
		</div>
		<footer><span>Nicolà Iannuzzi</span> <span>Gianluca Caggiano</span> <span>Francesco Staffiero</span></footer>
	</body>
</html>