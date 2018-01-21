<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="packageArtista.*" import="packageConcerto.*" import="java.util.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Crea Biglietto</title>
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
				<form method="post" onSubmit="return validateFormAggiungiBiglietti(this);" action="RegBiglietto">
					<fieldset class="DatiAccesso">
					
						<h3>Registrazione Biglietto</h3>
					
						<div class="row">				
							<label>Prezzo</label>
							<div class="fields">	
								<input type="text" name="prezzo" minlenght="1" maxlenght="10" name="prezzo" placeholder="Inserisci Prezzo" required>
							</div>					
						</div>
						
						<%ConcertoModel cModel = new ConcertoModel(); 
					  ArrayList<Concerto> arrayConcerti = cModel.doRetrieveAll();%>
					
						<div class="row">				
							<label>Concerto</label>
							<div class="fields">
							 	<input type="number" name="concerto" value="" min="1" max="<%=arrayConcerti.size() %>" placeholder="Valore tra 1 e <%=arrayConcerti.size() %>" required>
							</div>					
						</div>
						
						<div class="row">				
							<label>Numero Biglietti</label>
							<div class="fields">
							 	<input type="number" name="numBiglietti" value="" min="1" max="1000" placeholder="Valore tra 1 e 1000" required>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Fine">
							<input id="reset" type="reset" value="Reset">
							<input id="reset" type="button" onclick="location.href='index.jsp'" value="Non Registrare Biglietto">
						</div>	
					</fieldset>
				</form>
			</section>
			
		</div>
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>