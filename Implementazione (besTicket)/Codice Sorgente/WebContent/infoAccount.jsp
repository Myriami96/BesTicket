<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Info Account</title>
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
					
						<h3>Info Account</h3>
					
						<div class="row">				
							<label>Nome utente</label>
							<div class="fields">	
								<input type="text" value="<%=user.getUsername() %>" disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label>Nome</label>
							<div class="fields">
							 	<input type="text" value="<%=user.getNome() %>" disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label>Cognome</label>
							<div class="fields">	
								<input type="text" value="<%=user.getCognome() %>" disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label>Indirizzo email</label>
							<div class="fields">	
								<input type="text" value="<%=user.geteMail()%> " disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label >CAP, Città</label>
							<div class="fields">	
								<input id="CAP" type="text" value="<%=user.getCAP() %>" disabled>
								<input id="inputLocalita" type="text" value="<%=user.getCittà() %>" disabled>
							</div>					
						</div>
						
						<div class="row">				
							<label>Via</label>
							<div class="fields">	
								<input type="text" value="<%=user.getVia() %>" disabled>
							</div>					
						</div>
						
						<div class="row">
							<form action="ServCancAccount" method="get">
								<input id="registrati" type="submit" value="Cancella Account">	
							</form>							
						</div>
						
					</fieldset>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>