<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8" import="packageUtente.*" import="java.util.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Info Utente</title>
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
					
						<h3>Info Utente</h3>
						<%UtenteModel uModel = new UtenteModel(); 
						  Utente utente = uModel.doRetrieveByKey(request.getParameter("username"));%>
					
						<div class="row">				
							<label>Nome utente</label>
							<div class="fields">	
								<input type="text" value="<%=utente.getUsername() %>" disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label>Nome</label>
							<div class="fields">
							 	<input type="text" value="<%=utente.getNome() %>" disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label>Cognome</label>
							<div class="fields">	
								<input type="text" value="<%=utente.getCognome() %>" disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label>Indirizzo email</label>
							<div class="fields">	
								<input type="text" value="<%=utente.geteMail()%> " disabled>
							</div>					
						</div>
					
						<div class="row">				
							<label >CAP, Città</label>
							<div class="fields">	
								<input id="CAP" type="text" value="<%=utente.getCAP() %>" disabled>
								<input id="inputLocalita" type="text" value="<%=utente.getCittà() %>" disabled>
							</div>					
						</div>
						
						<div class="row">				
							<label>Via</label>
							<div class="fields">	
								<input type="text" value="<%=utente.getVia() %>" disabled>
							</div>					
						</div>
						
						<div class="row">
								<input id="registrati" onclick="location.href='utenti.jsp'" value="Indietro">
							</div>	
						
					</fieldset>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>