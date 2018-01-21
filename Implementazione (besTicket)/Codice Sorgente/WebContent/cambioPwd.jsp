<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Cambia Password</title>
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
				<form id="formRegistrazione" action="ServCambioPwd" method="post">
					<fieldset class="DatiAccesso">
					
						<h3>Cambio Password</h3>
						<%if(request.getParameter("err").equals("true"))
							{%>
						<h3 style="color: red;">Password Inserita Errata</h3>
						<%} %>
						<div class="row">				 
							<label>Vecchia Password</label>
							<div class="fields">	
								<input type="password" name="password" value=""minlength="8" maxlength="60" placeholder="Inserire Vecchia Password" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Nuova Password</label>
							<div class="fields">
							 	<input type="password" name="newPassword" value="" minlength="8" maxlength="60" placeholder="Inserire Nuova Password" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Nuova Password</label>
							<div class="fields">	
								<input type="password" name="newPassword1" value="" minlength="8" maxlength="60" placeholder="Reinserire Nuova Password" required>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Cambio Password">
							<input id="reset" type="reset" value="Reset">
						</div>
						
					</fieldset>
				</form>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>