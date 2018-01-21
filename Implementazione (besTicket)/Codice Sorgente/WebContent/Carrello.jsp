<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8" import="java.util.*" import="packageConcerto.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Carrello</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">  
				<%if(carrello.size()==0)
				  {%>
					  <p style="margin: 0; text-align: center;">Nessun Oggetto nel Carrello</p>
				  <%}else{%>
				  
				  <%for(int i=0; i< carrello.size(); i++)
				  {%>
				  		<div class="bordo">
				  		   <p>Artista: <%=carrello.get(i).getNomeArtista() %></p>	
			  			   <p>Città: <%=carrello.get(i).getCittà() %></p>	
			  			   <p>Data: <%=carrello.get(i).getData() %></p>	
			  			   <p>Ora: <%=carrello.get(i).getOra() %></p>	
			  			   <p>Via: <%=carrello.get(i).getVia() %></p>			
			  			   <p>Prezzo: &euro; <%=carrello.get(i).getPrezzo()%></p>	
				  		</div>
				  <%} %>
				  
				  <button onclick="location.href='ServSvuota'">Svuota Carrello</button>
				  <button onclick="location.href='ServAcquisto'">Procedi all'ordine</button>	
				  <%} %>
			</section>	
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>