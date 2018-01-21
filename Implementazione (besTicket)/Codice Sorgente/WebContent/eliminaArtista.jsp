<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8" import="packageArtista.*" import="packageLuogo.*" import="java.util.*" %>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Elimina Artista</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">
				<form method="post" action="ServCancArtista">
					<fieldset class="DatiAccesso">
					
						<h3>Quale Artista vuoi Eliminare?</h3>

						<%ArtistaModel uModel = new ArtistaModel(); 
					  	ArrayList<Artista> arrayArtisti = uModel.doRetrieveAll();%>
					
						<select name="artista" id="eliminaArtista" required>
						<%for(Artista artista: arrayArtisti)
						  {%>
                            <option value="<%=artista.getCod_Artista()%>"><%=artista.getNome() %></option>
                        <%} %>
        				</select>
						
						</br>
						<input id="eliminaArtista" type="submit" value="Elimina Artista">
					</fieldset>
				</form>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>