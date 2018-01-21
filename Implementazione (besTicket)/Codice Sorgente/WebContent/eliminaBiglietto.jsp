<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="packageConcerto.*" import="java.util.*"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Elimina Biglietti</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			<section id="info">
				<form method="post" action="ServCancBiglietti">
					<fieldset class="DatiAccesso">
					
						<h3>Quale Biglietti vuoi Eliminare?</h3>
						
						  <%ConcertoModel cModel = new ConcertoModel(); 
					 		 ArrayList<Concerto> arrayConcerti = cModel.doRetrieveAll();%>
					
						<div class="row">				
							<label>Concerto</label>
							<div class="fields">	
								<select name="concerto" required>
								<option value="-">-</option>
								<%for(Concerto concerto: arrayConcerti)
								  {%>
		                            <option value="<%=concerto.getCod_Concerto()%>"><%=concerto.getCod_Concerto()%></option>
		                        <%} %>
		        				</select>
							</div>					
						</div>
						
						<div class="row">				
							<label>Numero Biglietti</label>
							<div class="fields">	
								<input type="number" name="numBiglietti" value="" min="1" max="1000" placeholder="Valore tra 1 e 1000" required>
							</div>					
						</div>
						
						<div class="row">
							<input id="registrati" type="submit" value="Elimina Biglietti">
						</div>	
					</fieldset>
				</form>
			</section>
			
			<script>
			function showCAP(città)
			{
  				var xhttp;    
  				if (città == "-") 
  				{
    				document.getElementById("cap").innerHTML = "<option value="-">-</option>";
    				return;
  				}
  				xhttp = new XMLHttpRequest();
			    xhttp.onreadystatechange = function() 
			    {
			    	if (this.readyState == 4 && this.status == 200)
			    	{
			    		document.getElementById("cap").innerHTML = this.responseText;
			    	}
			  	};
			 	xhttp.open("GET", "ServLuogoCittà?città="+città, true);
			  	xhttp.send();
			}
			
			function showVia(cap)
			{
  				var xhttp;    
  				if (cap == "-") 
  				{
    				document.getElementById("via").innerHTML = "<option value="-">-</option>";
    				return;
  				}
  				xhttp = new XMLHttpRequest();
			    xhttp.onreadystatechange = function() 
			    {
			    	if (this.readyState == 4 && this.status == 200)
			    	{
			    		document.getElementById("via").innerHTML = this.responseText;
			    	}
			  	};
			 	xhttp.open("GET", "ServLuogoCAP?cap="+cap, true);
			  	xhttp.send();
			}
			</script>
		</div>
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>