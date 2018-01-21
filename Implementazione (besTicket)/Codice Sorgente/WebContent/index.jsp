<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="packageArtista.*, java.util.*"%>
  
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Home</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="Js/funzioni.js"></script>
		
		
	</head>
	
	<body>
		
		<div id="contenitore">
			<div id="menu">
				<div id= "menuScelta">
					<button class="close" onclick="closeMenu('menu', 'menuScelta')">x</button>
					<a href="#" onclick="switchMenu('menuScelta', 'menuL')">Località</a>
					<a href="#"  onclick="switchMenu('menuScelta', 'menuG')">Genere</a>
					<a href="info.jsp">Info</a>
				</div>
				
				<div id= "menuL">
					<button class="close" onclick="closeMenu('menu', 'menuL')">x</button>
					<button class="back" onclick="switchMenu('menuL', 'menuScelta')">&laquo;</button>
					<a href="ServLocalita?localita=Milano">Milano</a>
					<a href="ServLocalita?localita=Roma">Roma</a>
					<a href="ServLocalita?localita=Torino">Torino</a>
					<a href="ServLocalita?localita=Bologna">Bologna</a>
					<a href="ServLocalita?localita=Napoli">Napoli</a>
					<a href="ServLocalita?localita=Firenze">Firenze</a>
					<a href="ServLocalita?localita=Bari">Bari</a>
					<form class="formMenu" method="get" action="ServLocalita">
						<input type="text" name="localita" placeholder="Ricerca per località">
						<button type="submit"><i class="material-icons">search</i></button>
					</form>
				</div>
			
				<div id="menuG">
					<button class="close" onclick="closeMenu('menu', 'menuG')">x</button>
					<button class="back" onclick="switchMenu('menuG', 'menuScelta')" >&laquo;</button>
					<a href="ServGenere?genere=Rock">Rock</a>
					<a href="ServGenere?genere=Metal">Metal</a>
					<a href="ServGenere?genere=Rap">Rap</a>
					<a href="ServGenere?genere=Pop">Pop</a>
					<a href="ServGenere?genere=Jazz">Jazz</a>
					<a href="ServGenere?genere=Blues">Blues</a>
					<a href="ServGenere?genere=Classica">Classica</a>
					<form class="formMenu" action="ServGenere" method="get">
						<input type="text" name="genere" placeholder="Ricerca per genere">
						<button type="submit"><i class="material-icons">search</i></button>
					</form>
				</div>
			</div>
			<header>
				<nav>
					<div id="localita">
						<button id="btnL" onmouseover="toggle_visibility('TendinaL', 'TendinaG', 'btnL', 'btnG')">Località<i class="material-icons">keyboard_arrow_down</i></button>
					</div>
					
					<div id="genere">
						<button id="btnG" onmouseover="toggle_visibility('TendinaG', 'TendinaL', 'btnG', 'btnL')">Genere<i class="material-icons">keyboard_arrow_down</i></button>	
					</div> 
					
					<button id="menuBtn" onclick="openMenu('menu', 'menuScelta')"><i class="material-icons">menu</i></button>
					
					<form action="ServArtista" method="get">
						<input class="input" type="text" name="nome" placeholder="Ricerca Artista" required>
						<button class="cerca" type="submit"><i class="material-icons">search</i>Cerca</button>
					</form>
					
					<div id="gruppo">
						<button id="carrello" onclick="location.href='Carrello.jsp'"><i class="material-icons">shopping_cart</i>Carrello</button>
						<%if(user.isAutenticate())
						{%>
							<button id="logout" onclick="logoutF()"><i class="material-icons">person</i>Logout</button>
						<%}else{ %>
							<button id="login" onclick="login()"><i class="material-icons">person</i>Login</button>
						<%} %>
					</div>
				</nav>
				<button id="home" onclick="location.href='index.jsp'"></button>
				<button id="infoBtn" onclick="location.href='info.jsp'"><i class="material-icons">info</i></button>
			</header>
			
			<div id="TendinaLogin">
				<form method="post" onSubmit="return validateFormLogin(this);" action="ServLogin">
					<p>UserName:</p>
					<input class="username" type="text" name="username" minlength="5" placeholder="Inserisci UserName" required><br/>
					<p>Password:</p>
					<input class="password" type="password" name="password" minlength="8" maxlenght="60" placeholder="Inserisci Password" required><br/>
					<button id="accedi" type="submit">Accedi</button><br/>
					<span>Nuovo cliente? </span>
					<a href="registrazione.jsp">Registrati</a>
				</form>
			</div>
			
			<div id="TendinaLogout">
				<form method="get" action="ServLogout">
					 <br/>
					<a href="infoAccount.jsp">Informazioni Account</a> <br/> <br/>
					<a href="cambioPwd.jsp?err=false">Cambia Password</a> <br/>  <br/>
					<%if(user.isAdminUtenti())
					{%>
						<a href="utenti.jsp">Utenti...</a> <br/>  <br/>
					<%} %>
					<%if(user.isAdminConcerti())
					{%>
						<a href="CreaArtista.jsp">Aggiungi...</a> <br/>  <br/>
						<a href="elimina.jsp">Elimina...</a> <br/>  <br/>
					<%} %>
					<button id="logoutBtn" type="submit">Logout</button><br/>
				</form>
			</div>
			
			<div id= "TendinaL">
				<a href="ServLocalita?localita=Milano">Milano</a>
				<a href="ServLocalita?localita=Roma">Roma</a>
				<a href="ServLocalita?localita=Torino">Torino</a>
				<a href="ServLocalita?localita=Bologna">Bologna</a>
				<a href="ServLocalita?localita=Napoli">Napoli</a>
				<a href="ServLocalita?localita=Firenze">Firenze</a>
				<a href="ServLocalita?localita=Bari">Bari</a>
					<form class="formInt" method="get" action="ServLocalita">
						<input type="text" name="localita" placeholder="Ricerca per località">
						<button type="submit"><i class="material-icons">search</i></button>
					</form>
			</div>
			
			<div id="TendinaG">
				<a href="ServGenere?genere=Rock" id="rock">Rock</a>
				<a href="ServGenere?genere=Metal">Metal</a>
				<a href="ServGenere?genere=Rap">Rap</a>
				<a href="ServGenere?genere=Pop">Pop</a>
				<a href="ServGenere?genere=Jazz">Jazz</a>
				<a href="ServGenere?genere=Blues">Blues</a>
				<a href="ServGenere?genere=Classica">Classica</a>
					<form class="formInt" action="ServGenere" method="get">
						<input type="text" name="genere" placeholder="Ricerca per genere">
						<button type="submit"><i class="material-icons">search</i></button>
					</form>
			</div>
			
			<section id="slider">
				<div id="divSinistro">
					<div id="divSinitroSu">
						<img alt="" src="images/slide/4.jpg">
					</div>
					
					<div id="divSinitroGiu">
						<div>
							<img class="myslide slideTop" alt="" src="images/slide/1.jpg">
							<img class="myslide slideTop" alt="" src="images/slide/2.jpg">
							<img class="myslide slideTop" alt="" src="images/slide/3.jpg">
							<img class="myslide slideTop" alt="" src="images/slide/5.jpg">
						</div>
						<div>
							<img class="imgDue myslide slideTop" alt="" src="images/slide/6.jpg">
							<img class="imgDue myslide slideTop" alt="" src="images/slide/7.jpg">
							<img class="imgDue myslide slideTop" alt="" src="images/slide/8.jpg">
							<img class="imgDue myslide slideTop" alt="" src="images/slide/9.png">
						</div>
						<div>					
							<img class="imgTre myslide slideTop" alt="" src="images/slide/10.jpg">
							<img class="imgTre myslide slideTop" alt="" src="images/slide/11.jpg">
							<img class="imgTre myslide slideTop" alt="" src="images/slide/12.jpg">
							<img class="imgTre myslide slideTop" alt="" src="images/slide/13.jpg">
						</div>
					</div>
				</div>
				
				<div id="divDestro">
					<div id="divDestroSu">
						<div>
							<img class="myslide slideTop" alt="" src="images/slide/15.jpg">
							<img class="myslide slideTop" alt="" src="images/slide/16.png">
							<img class="myslide slideTop" alt="" src="images/slide/17.jpg">
							<img class="myslide slideTop" alt="" src="images/slide/18.jpg">
						</div>
						<div>
							<img class="imgDue myslide slideTop" alt="" src="images/slide/19.jpg">
							<img class="imgDue myslide slideTop" alt="" src="images/slide/20.jpg">
							<img class="imgDue myslide slideTop" alt="" src="images/slide/21.jpg">
							<img class="imgDue myslide slideTop" alt="" src="images/slide/22.jpg">
						</div>
						<div>
							<img class="imgTre myslide slideTop" alt="" src="images/slide/28.jpg">
							<img class="imgTre myslide slideTop" alt="" src="images/slide/24.jpg">
							<img class="imgTre myslide slideTop" alt="" src="images/slide/25.jpg">
							<img class="imgTre myslide slideTop" alt="" src="images/slide/27.jpg">
						</div>
					</div>
					
					<div id="divDestroGiu">
						<img alt="" src="images/slide/14.jpg">
						<img class="imgQuattro" alt="" src="images/slide/23.jpg">
					</div>
				</div>
			</section>
			
			<%
				ArtistaModel artista = new ArtistaModel();
				ArrayList<Artista> array = new ArrayList<Artista>();
			%>
			<div id="TopConc">
				<p> Top 10 Concerti più Popolari </p>
				<div class="topImg">
				<%
					array = artista.doRetrievePopolari();
					for(Artista a:array)
					{
						%>
						
							<img src="<%=a.getImg() %>">
	
						<%	
					}
				%>
				</div>	
			</div>
			
			<%
				ArtistaModel artistaM = new ArtistaModel();
				ArrayList<Artista> arrayM = new ArrayList<Artista>();
			%>
			<div id="TopBiglietti">
				<p> Top 10 Concerti più Economici </p>
				<div class="topImg">
				<%
					arrayM = artista.doRetrieveEconomici();
					for(Artista a:arrayM)
					{
						%>
						
							<img src="<%=a.getImg() %>">
	
						<%	
					}
				%>
				</div>	
			</div>
		
		</div>
		
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>