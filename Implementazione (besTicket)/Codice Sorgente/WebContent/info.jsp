<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Info</title>
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
				<h3>Info</h3>
				
					<span>
						BesTicket è un sito di vendita online rivolto a tutti gli utenti interessati all'acquisto di biglietti per concerti. L'utente avrà la possibilità di: acquistare biglietti, cercare Concerti per località o per genere musicale ed utilizzare la barra per la ricerca di Artisti. <br/>
						Il sito avrà anche una barra di navigazione da dove si potrà accedere al carrello, leggere informazioni relative al sito e all'utente e tanti altri servizi. <br/>
						</br>
						Grazie per averci scelto, Buona Navigazione e buoni acquisti :)
					</span>
				</fieldset>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>