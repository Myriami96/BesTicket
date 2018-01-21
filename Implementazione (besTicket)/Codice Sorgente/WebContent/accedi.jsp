<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Accedi</title>
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
				<form id="formRegistrazione" onSubmit="return validateFormLogin(this);" action="ServLogin" method="post">
					<fieldset class="DatiAccesso">
						<h3>Accedi</h3>
						<h3 style="color: red;">Username o Password ERRATI</h3>
						<div class="row">				
						<label>UserName</label>
						<div class="fields">	
							<input type="text" name="username" minlength="5" placeholder="Inserisci UserName" required>
						</div>					
					</div>
					
					<div class="row">				
						<label>Password</label>
						<div class="fields">
						 	<input type="password" name="password" minlength="8" maxlenght="60" placeholder="Inserisci Password" required>
						</div>					
					</div>
					
					<div class="row">
						<input id="registrati" type="submit" value="Accedi"> <br/> <br/>
						<a>Nuovo cliente?</a> 
	    				<a href="registrazione.jsp">Registrati</a>
					</div>
						
					</fieldset>
				</form>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>