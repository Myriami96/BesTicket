<%@ page language="java" contentType="text/html; charset=uft-8"
    pageEncoding="utf-8" import="packageUtente.*" import="java.util.*" %>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Utenti...</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		<style>
			table
		 	{
			    font-family: arial, sans-serif;
			    border-collapse: collapse;
			    width: 85%;
    			margin: 0 auto;
    			margin-top: 20px;
			    background-color: lightgrey;
			}
			
			td, th 
			{
			    border: 1px solid #dddddd;
			    text-align: left;
			    padding: 12px;
			}
			
			td#Azioni
			{
				width: 12px;
			}
			
			section button
			{
				    width: 60px !important;
				    height: 60px !important;
				    margin: 0 auto !important;
				    border-radius: 221px !important;
				    font-size: 36px !important;
				    font-weight: bold;
				    color: white !important;
				    background-color: grey !important;
				    padding: 0 !important;
			}
			
		</style>
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<%@ include file="incluse/header.txt" %>
			
			
			<%UtenteModel uModel = new UtenteModel();
			  ArrayList<Utente> arrayUtenti = uModel.doRetrieveAll();%>
			  
			<section id="info">
				<fieldset class="DatiAccesso">
				<table>
				  <% for(int i = 0; i< arrayUtenti.size() ; i++)
				  {%>
				  <tr>
				    <td><a href='infoUtente.jsp?username=<%=arrayUtenti.get(i).getUsername()%>'><%=arrayUtenti.get(i).getUsername() %></a></td>
				    <td id="Azioni"><button onclick="location.href='promuovi.jsp?username=<%=arrayUtenti.get(i).getUsername()%>'">&#8679;</button></td>
				    <td id="Azioni"><button onclick="location.href='ServCancUtente?utente=<%=arrayUtenti.get(i).getUsername()%>'">&#10006;</button></td>
				  </tr>
				  <%} %>
				</table>	
				</fieldset>
			</section>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>