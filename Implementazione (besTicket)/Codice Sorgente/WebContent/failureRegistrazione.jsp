<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/ErroreRegistrazione</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="refresh" content="5;URL=registrazione.jsp">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		<div id="contenitore">

			<header>
			</header>
			
			<section id="info">
				<fieldset class="DatiAccesso">
				<h3>Registrazione non avvenuta :(</h3>
				<span style="color: red; font-weight: bold; font-size: 20px;">
							<% 	if(request.getParameter("errore") != null)
							{
								String err="Errore : "+request.getParameter("errore"); %>
								<%= err %>
							<% 
							}
							else
							{
								
							}
							%>
						</span>
						<br/><br/>
					<span>
						Purtroppo la registrazione non è avvenuta con successo, probabilmente alcuni campi contengono valori non validi. <br/> <br/>
						Puoi ritentare la registrazione, ti riportiamo noi alla pagina di registrazione... Buona Navigazione :).
					</span>
				</fieldset>
			</section>
		</div>
		
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>