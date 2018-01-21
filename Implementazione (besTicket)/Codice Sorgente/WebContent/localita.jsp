<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8" import="java.util.*" import="packageConcerto.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Località</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>			
			<section id="info">  
				<%ArrayList<Concerto> array = new ArrayList<Concerto>(); 
				  array = (ArrayList<Concerto>) request.getAttribute("array");
				  if(array.isEmpty())
				  {%>
					  <p style="margin: 0; text-align: center;">Nessun Risultato Trovato</p>
				  <%}
				  for(Concerto concerto: array)
				  {%>
				  		<div class="contorno">
				  			<div class="img">
				  				<p><%=concerto.getNomeArtista() %></p>
				  				<img src="<%=concerto.getImg() %>">
				  			</div>
				  			<div class="infoConc">
				  				<p><%=concerto.getCittà() %></p>
				  				<p><%=concerto.getCAP() %></p>
				  				<p><%=concerto.getData() %></p>
				  				<p><%=concerto.getOra() %></p>
				  				<p>&euro; <%=concerto.getPrezzo() %></p>
				  			</div>				  			
				  			<div class="btnAcquista">
				  			<%if(user.isAutenticate() && !user.isAdminConcerti() && !user.isAdminUtenti()){ %>
				  				<button onclick="location.href='ServAddCarrello?artista=<%=concerto.getNomeArtista() %>&citta=<%=concerto.getCittà()%>&biglietto=<%=concerto.getBiglietto()%>&data=<%=concerto.getData()%>&ora=<%=concerto.getOra()%>&via=<%=concerto.getVia()%>&prezzo=<%=concerto.getPrezzo()%>'">Acquista</button>
				  				<p>Acquista ora il tuo biglietto online</p>
				  			<%}else if(user.isAdminConcerti() || user.isAdminUtenti()){%>
				  				<p>Un amministratore non può effettuare acquisti</p>
				  			<% } else{ %>
				  				<p>Accedi per acquistare il tuo biglietto online</p>
				  			<%} %>
				  			</div>	
				  		</div>
				  <%} %>	
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>