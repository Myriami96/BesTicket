<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="packageArtista.*" import="packageLuogo.*" import="java.util.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Crea Concerto</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		<script>
		
			function validaForm()
			{
				var ora=document.getElementById("ora").value;
				var exp = new RegExp('^[0-9]{1,2}:[0-9]{2}$');
				if(exp.test(ora))
				{
					return true;
				}
				else
				{
					alert("ora nel formato sbagliato");
					return false;
				}
					
			}
		
		</script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">
				<form method="post" action="RegConcerto">
					<fieldset class="DatiAccesso">
					
						<h3>Registrazione Concerto</h3>
					
					<%ArtistaModel uModel = new ArtistaModel(); 
					  ArrayList<Artista> arrayArtisti = uModel.doRetrieveAll();%>
					
						<div class="row">				
							<label>Artista</label>
							<div class="fields">	
								<select name="artista" required>
								<%for(Artista artista: arrayArtisti)
								  {%>
		                            <option value="<%=artista.getCod_Artista()%>"><%=artista.getNome() %></option>
		                        <%} %>
		        				</select>
							</div>					
						</div>
						
					  <%LuogoModel lModel = new LuogoModel(); 
					  ArrayList<Luogo> arrayLuoghi = lModel.doRetrieveAll();%>
					
						<div class="row">				
							<label>Luogo</label>
							<div class="fields">	
								<select name="luogo" required>
								<%for(Luogo luogo: arrayLuoghi)
								  {%>
		                            <option value="<%=luogo.getCod_Luogo()%>"><%=luogo.getCittà() %></option>
		                        <%} %>
		        				</select>
							</div>					
						</div>
					
						<div class="row">				
							<label>Data</label>
							<div class="fields">	
								<input type="date" name="data" value="" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Ora</label>
							<div class="fields">
							 	<input type="text" id="ora" name="ora" value="" placeholder="hh:mm" required>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Avanti">
							<input id="reset" type="reset" value="Reset">
							<input id="reset" type="button" onclick="location.href='creaBiglietto.jsp'" value="Non registrare Luogo">
						</div>	
					</fieldset>
				</form>
			</section>
			
		</div>
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>