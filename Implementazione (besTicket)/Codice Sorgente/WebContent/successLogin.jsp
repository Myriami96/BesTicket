<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Success</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="refresh" content="1;URL=index.jsp">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		<div id="contenitore">
			<header>
			</header>
			
			<section id="info">
				<fieldset class="DatiAccesso">
				<h3>Login effettuato con successo !!!! :)</h3>
				
					<span>
						Tra pochi secondi sarai reindirizzato alla Home... Buona Navigazione !! :).
					</span>
				</fieldset>
			</section>
		</div>
		
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>