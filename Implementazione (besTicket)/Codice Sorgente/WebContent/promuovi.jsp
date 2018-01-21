<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Promuovi</title>
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
				<form id="formRegistrazione" action="ServPromUtente" method="post">
					<fieldset class="DatiAccesso">
					
						<h3>Promuovi Utente</h3>
						
						<div class="row">				 
							<input type="radio" name="amm" value="AdminConcerti">	Amministratore Concerti			
						</div>
					
						<div class="row">				
							<input type="radio" name="amm" value="AdminUtenti"> Amministratore Utenti 				
						</div>
						
						<input type="hidden" name="username" value="<%=request.getParameter("username")%>">
						
						<div class="row">
							<input id="registrati" type="submit" value="Conferma">
							<input id="reset" type="reset" value="Reset">
						</div>
						
					</fieldset>
				</form>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>