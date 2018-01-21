<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="packageConcerto.*" import="packageConcerto.*" import="java.util.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Elimina Concerto</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">
				<form method="post" action="ServCancConcerto">
					<fieldset class="DatiAccesso">
					
						<h3>Quale Concerto vuoi Eliminare?</h3>
						
						  <%ConcertoModel cModel = new ConcertoModel(); 
						  ArrayList<Concerto> arrayConcerti = cModel.doRetrieveByArtistaAll();%>
					
						<div class="row">				
							<label>Artista</label>
							<div class="fields">	
								<select onchange="showLuogo(this.value)" id="artista" name="artista" required>
								<option value="-">-</option>
								<%for(Concerto concerto: arrayConcerti)
								  {%>
		                            <option value="<%=concerto.getNomeArtista()%>"><%=concerto.getNomeArtista() %></option>
		                        <%} %>
		        				</select>
							</div>					
						</div>
						<div class="row">				
							<label>Luogo</label>
							<div class="fields">	
								<select onchange="showData(this.value)" id="luogo" name="luogo" required>
		        				</select>
							</div>					
						</div>
					
						
						<div class="row">				
							<label>Data</label>
							<div class="fields">
							 	<select onchange="showOra(this.value)" name="data" id="data" required>
		        				</select>
							</div>					
						</div>
						
						<div class="row">				
							<label>Ora</label>
							<div class="fields">
							 	<select name="ora" id="ora" required>
		        				</select>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Elimina Concerto">
						</div>	
					</fieldset>
				</form>
			</section>
			
			<script>
			function showLuogo(artista)
			{
  				var xhttp;    
  				if (artista == "-") 
  				{
    				document.getElementById("luogo").innerHTML = "<option value="-">-</option>";
    				return;
  				}
  				xhttp = new XMLHttpRequest();
			    xhttp.onreadystatechange = function() 
			    {
			    	if (this.readyState == 4 && this.status == 200)
			    	{
			    		document.getElementById("luogo").innerHTML = this.responseText;
			    	}
			  	};
			 	xhttp.open("GET", "ServConcertoArtista?artista="+artista, true);
			  	xhttp.send();
			}
			
			function showData(città)
			{
  				var xhttp;
  				var y = document.getElementById("artista").selectedIndex;
  			    var artista = document.getElementById("artista").options[y].text;
  				if (città == "-") 
  				{
    				document.getElementById("data").innerHTML = "<option value="-">-</option>";
    				return;
  				}
  				xhttp = new XMLHttpRequest();
			    xhttp.onreadystatechange = function() 
			    {
			    	if (this.readyState == 4 && this.status == 200)
			    	{
			    		document.getElementById("data").innerHTML = this.responseText;
			    	}
			  	};
			 	xhttp.open("GET", "ServConcertoCittà?città="+città+"&artista="+artista, true);
			  	xhttp.send();
			}
			
			function showOra()
			{
  				var xhttp;
  				var y = document.getElementById("artista").selectedIndex;
  			    var artista = document.getElementById("artista").options[y].text;
  			  	var x = document.getElementById("luogo").selectedIndex;
			    var città = document.getElementById("luogo").options[x].text;
			    var z = document.getElementById("data").selectedIndex;
			    var data = document.getElementById("data").options[z].text;
  				if (data == "-") 
  				{
    				document.getElementById("ora").innerHTML = "<option value="-">-</option>";
    				return;
  				}
  				xhttp = new XMLHttpRequest();
			    xhttp.onreadystatechange = function() 
			    {
			    	if (this.readyState == 4 && this.status == 200)
			    	{
			    		document.getElementById("ora").innerHTML = this.responseText;
			    	}
			  	};
			 	xhttp.open("GET", "ServConcertoData?città="+città+"&artista="+artista+"&data="+data, true);
			  	xhttp.send();
			}
			</script>
		</div>
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>