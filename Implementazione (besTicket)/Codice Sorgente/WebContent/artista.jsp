<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8" import="java.util.*" import="packageArtista.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Artista</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">  
				<% Artista artista = (Artista) request.getAttribute("artista");
					if(artista != null)
					{%>
			  		<div class="contorno">
			  			<div class="img">
			  				<p><%=artista.getNome() %></p>
			  				<img src="<%=artista.getImg() %>">
			  			</div>
			  			<div class="btnBiglietti">
			  			<%if(user.isAutenticate()){ %>
			  				<button onclick="location.href='ServArtConcerti?nomeArtista=<%=artista.getNome() %>'">Biglietti</button>
			  				<p>Scopri gli spettacoli in programma e acquista il tuo biglietto online</p>
			  			<%}else{} %>
			  			</div>	
			  		</div>
			  		<%} else{%>	
			  	<p style="margin: 0; text-align: center;">Nessun Risultato Trovato</p>
			  	<%} %>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>