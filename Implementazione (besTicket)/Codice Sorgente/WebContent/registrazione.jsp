<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<jsp:useBean id="user" class="packageUtente.Utente" scope="session"/>
<jsp:useBean id="carrello" class="packageCarrello.Carrello" scope="session"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>besTicket/Registrazione</title>
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
			
				<fieldset>
					<h2>Nuovo utente? Registrati!</h2>
					<p>Non ci si è ancora registrati? È sufficiente registrarsi 
					qui in modo semplice e rapido e beneficiare di innumerevoli vantaggi.</p>
				</fieldset>
				
				<form id="formRegistrazione" onSubmit="return validateForm(this);"  method="post"  action="RegServ">
					
					<fieldset class="DatiAccesso">
					
						<h3>Dati di Accesso</h3>
					
						
						
						<div class="row">				
							<label>Nome utente*</label>
							<div class="fields">	
								<input onchange="showCustomer(this.value)"  id="username" type="text" name="username" value="" minlength="5" placeholder="Inserisci Nome Utente" required>
								<br/><span style="color: red;" id="textError"></span>
							</div>					
						</div>
					
						<div class="row">				
							<label>Password*</label>
							<div class="fields">
							 	<input type="password" name="password" value="" placeholder="Inserisci Password" minlength="8" maxlength="60" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Ripeti password*</label>
							<div class="fields">	
								<input type="password" name="password1" value="" placeholder="Reinserisci Password" minlength="8" maxlength="60" required>
							</div>					
						</div>
					
						<div class="row">				
							<label>Indirizzo email*</label>
							<div class="fields">	
								<input type="text" onchange="showMail(this.value)" name="email" minlenght="5" maxlenght="60" value="" placeholder="Inserisci email" data-paste="disabled" data-drop="disabled" required>
								<br/><span style="color: red;" id="mailError"></span>
							</div>					
						</div>
					
						<div class="row">				
							<label>Ripeti indirizzo email*</label>
							<div class="fields">	
								<input type="text" name="email1" value="" placeholder="Reinserisci email" minlenght="5" maxlenght="60" data-copy="disabled" data-paste="disabled" data-drop="disabled" required>
							</div>					
						</div>
					</fieldset>
				
					<fieldset class="DatiPersonali">
				
						<h3>Dati personali</h3>
									
							<div class="row">				
								<label>Nome*</label>
								<div class="fields">						
									<input type="text" name="nome" value="" minlenght="2" maxlenght="30" placeholder="Inserisci Nome" required>
								</div>					
							</div>
					
							<div class="row">				
								<label>Cognome*</label>
								<div class="fields">	
									<input type="text" name="cognome" value="" minlenght="2" maxlenght="30" placeholder="Inserisci Cognome" required>
								</div>					
							</div>
			
							<div class="row">				
								<label>Via e n° civico*</label>
								<div class="fields">	
									<input type="text" name="via" value="" minlenght="5" maxlenght="100" placeholder="Inserisci Via ed il n° civico" required>
								</div>					
							</div>	
					
							<div class="row">				
								<label>CAP*, località*</label>
								<div class="fields">	
									<input id="CAP" type="text" name="CAP" value="" placeholder="Inserisci CAP" maxlength="5" required>
									<input id="inputLocalita" type="text" name="localita" minlenght="3" maxlenght="30" value="" placeholder="Inserisci località" required>
								</div>					
							</div>
				
							<div class="row">				
								<label>Paese*</label>
								<div class="fields">
									<select name="paese" onChange="nazione(this);" required>
										<option value=""></option>
		                                <option value="IT" selected="selected">Italia</option>
										<option value="AF">Afghanistan</option>
		        						<option value="AL">Albania</option>
		        						<option value="DZ">Algeria</option>
		        						<option value="AD">Andorra</option>
		        						<option value="AO">Angola</option>
		        						<option value="AI">Anguilla</option>
		        						<option value="AG">Antigua e Barbuda</option>
		        						<option value="AN">Antille olandesi</option>
		        						<option value="SA">Arabia Saudita</option>
		        						<option value="AR">Argentina</option>
		        						<option value="AM">Armenia</option>
		        						<option value="AW">Aruba</option>
		        						<option value="AU">Australia</option>
		        						<option value="AT">Austria</option>
		        						<option value="AZ">Azerbaijan</option>
		        						<option value="BS">Bahamas</option>
		        						<option value="BH">Bahrein</option>
		        						<option value="BD">Bangladesh</option>
		        						<option value="BB">Barbados</option>
		        						<option value="BY">Belarus</option>
		        						<option value="BE">Belgio</option>
		        						<option value="BZ">Belize</option>
		        						<option value="BJ">Benin</option>
		        						<option value="BM">Bermuda</option>
		        						<option value="BT">Bhutan</option>
		        						<option value="BO">Bolivia</option>
		        						<option value="BA">Bosnia-Erzegovina</option>
		        						<option value="BW">Botswana</option>
		        						<option value="BR">Brasile</option>
		        						<option value="VG">British Virgin Islands</option>
		        						<option value="BN">Brunei Darussalam</option>
		        						<option value="BG">Bulgaria</option>
		        						<option value="BF">Burkina Faso</option>
		        						<option value="BI">Burundi</option>
		        						<option value="KH">Cambogia</option>
		        						<option value="CM">Camerun</option>
		        						<option value="CA">Canada</option>
		        						<option value="CV">Capo Verde</option>
		        						<option value="XX">Channel Islands</option>
		        						<option value="CL">Cile</option>
		        						<option value="CY">Cipro</option>
		        						<option value="CO">Colombia</option>
		        						<option value="KM">Comore</option>
		        						<option value="CG">Congo</option>
		        						<option value="CI">Costa d’Avorio</option>
		        						<option value="CR">Costa Rica</option>
		        						<option value="HR">Croazia</option>
		        						<option value="CU">Cuba</option>
		        						<option value="DK">Danimarca</option>
		        						<option value="DM">Dominica</option>
		        						<option value="EC">Ecuador</option>
		        						<option value="EG">Egitto</option>
		        						<option value="SV">El Salvador</option>
		        						<option value="AE">Emirati Arabi Uniti</option>
		        						<option value="ER">Eritrea</option>
		        						<option value="EE">Estonia</option>
		        						<option value="ET">Etiopia</option>
		        						<option value="FJ">Fiji</option>
		        						<option value="PH">Filippine</option>
		        						<option value="FI">Finlandia</option>
		        						<option value="FR">Francia</option>
		        						<option value="GA">Gabon</option>
		        						<option value="GM">Gambia</option>
		        						<option value="GE">Georgia</option>
		        						<option value="DE">Germania</option>
		        						<option value="GH">Ghana</option>
		        						<option value="JM">Giamaica</option>
		        						<option value="JP">Giappone</option>
		        						<option value="GI">Gibilterra</option>
		        						<option value="DJ">Gibuti</option>
		        						<option value="JO">Giordania</option>
		        						<option value="GB">Gran Bretagna e Irlanda del Nord</option>
		        						<option value="GR">Grecia</option>
		        						<option value="GD">Grenada</option>
		        						<option value="GL">Groenlandia</option>
		        						<option value="GP">Guadalupe</option>
		        						<option value="GU">Guam</option>
		        						<option value="GT">Guatemala</option>
		        						<option value="GY">Guayana</option>
		        						<option value="GN">Guinea</option>
		        						<option value="GW">Guinea Bissau</option>
		        						<option value="GQ">Guinea equatoriale</option>
		        						<option value="GF">Guyana francese</option>
		        						<option value="HT">Haiti</option>
		        						<option value="HN">Honduras</option>
		        						<option value="HK">Hongkong</option>
		        						<option value="IN">India</option>
		        						<option value="ID">Indonesia</option>
		        						<option value="IQ">Irak</option>
		        						<option value="IR">Iran</option>
		        						<option value="IE">Irlanda</option>
		        						<option value="IS">Islanda</option>
		        						<option value="IM">Isle of Man</option>
		        						<option value="SJ">Isola di Svalbard e Jan Mayen</option>
		        						<option value="KY">Isole Cayman</option>
		        						<option value="CK">Isole Cook</option>
		        						<option value="FK">Isole Falkland/Malvine</option>
		        						<option value="FO">Isole Faroe</option>
		        						<option value="MH">Isole Marshall</option>
		        						<option value="NF">Isole Norfolk</option>
		        						<option value="PN">Isole Pitcairn</option>
		        						<option value="SB">Isole Salomon</option>
		        						<option value="TC">Isole Turks e Caicos</option>
		        						<option value="WF">Isole Wallise Futuna</option>
		        						<option value="IL">Israele</option>
		        						<option value="IT">Italia</option>
		        						<option value="JE">Jemen</option>
		        						<option value="QA">Katar</option>
		        						<option value="KZ">Kazachistan</option>
		        						<option value="KE">Kenia</option>
		        						<option value="KG">Kiribati</option>
		        						<option value="KW">Kuwait</option>
		        						<option value="KI">Kyrgyzstan</option>
		        						<option value="LA">Laos</option>
		        						<option value="LS">Lesoto</option>
		        						<option value="LV">Lettonia</option>
		        						<option value="LB">Libano</option>
		        						<option value="LR">Liberia</option>
		        						<option value="LY">Libia</option>
		        						<option value="LI">Liechtenstein</option>
		        						<option value="LT">Lituania</option>
		        						<option value="LU">Lussemburgo</option>
		        						<option value="MO">Macao</option>
		        						<option value="MK">Macedonia</option>
		        						<option value="MG">Madagascar</option>
		        						<option value="MW">Malawi</option>
		        						<option value="MV">Maldive</option>
		        						<option value="MY">Malesia</option>
		        						<option value="ML">Mali</option>
		        						<option value="MT">Malta</option>
		        						<option value="MA">Marocco</option>
		        						<option value="MQ">Martinica</option>
		        						<option value="MR">Mauritania</option>
		        						<option value="MU">Mauritius</option>
		        						<option value="YT">Mayotte</option>
		        						<option value="MX">Messico</option>
		        						<option value="MD">Moldavia</option>
		        						<option value="MC">Monaco</option>
		        						<option value="MN">Mongolia</option>
		        						<option value="ME">Montenegro</option>
		        						<option value="MS">Montserrat</option>
		        						<option value="MZ">Mozambico</option>
		        						<option value="MM">Myanmar</option>
		        						<option value="NA">Namibia</option>
		        						<option value="NR">Nauru</option>
		        						<option value="NP">Nepal</option>
		        						<option value="NI">Nicaragua</option>
		        						<option value="NE">Niger</option>
		        						<option value="NG">Nigeria</option>
		        						<option value="NU">Niue</option>
		        						<option value="MP">Northern Mariana Islands</option>
		        						<option value="NO">Norvegia</option>
		        						<option value="NC">Nuova Caledonia</option>
		        						<option value="NZ">Nuova Zelanda</option>
		        						<option value="OM">Oman</option>
		        						<option value="NL">Paesi Bassi</option>
		        						<option value="PK">Pakistan</option>
		        						<option value="PW">Palau</option>
		        						<option value="PS">Palestina</option>
		        						<option value="PA">Panama</option>
		        						<option value="PG">Papua Nuova Guinea</option>
		        						<option value="PY">Paraguay</option>
		        						<option value="PE">Perù</option>
		        						<option value="PF">Polinesia francese</option>
		        						<option value="PL">Polonia</option>
		        						<option value="PT">Portogallo</option>
		        						<option value="PR">Portorico</option>
		        						<option value="CZ">Repubblica Ceca</option>
		        						<option value="CF">Repubblica Centrafricana</option>
		        						<option value="CD">Repubblica Democratica del Congo</option>
		        						<option value="KP">Repubblica Democratica Popolare di Corea</option>
		        						<option value="KR">Repubblica di Corea</option>
		        						<option value="DO">Repubblica Dominicana</option>
		        						<option value="CN">Repubblica Popolare Cinese</option>
		        						<option value="VN">Repubblica Socialista del Vietnam</option>
		        						<option value="RO">Romania</option>
		        						<option value="RW">Ruanda</option>
		        						<option value="RU">Russia</option>
		        						<option value="EH">Sahara Occidentale</option>
		        						<option value="VC">Saint Vincent e Grenadine</option>
		        						<option value="WS">Samoa</option>
		        						<option value="AS">Samoa americana</option>
		        						<option value="SM">San Marino</option>
		        						<option value="SH">Santa Elena</option>
		        						<option value="LC">Santa Lucia</option>
		        						<option value="ST">São Tomé e Príncipe</option>
		        						<option value="SN">Senegal</option>
		        						<option value="RS">Serbia</option>
		        						<option value="SC">Seychelles</option>
		        						<option value="SL">Sierra Leone</option>
		        						<option value="SG">Singapore</option>
		        						<option value="SY">Siria</option>
		        						<option value="SK">Slovacchia</option>
		        						<option value="SI">Slovenia</option>
		        						<option value="SO">Somalia</option>
		        						<option value="ES">Spagna</option>
		        						<option value="LK">Sri Lanka</option>
		        						<option value="KN">St. Kitts e Nevis</option>
		        						<option value="PM">St. Pierre e Miquelon</option>
		        						<option value="FM">Stati Federati di Micronesia</option>
		        						<option value="ZA">Sudafrica</option>
		        						<option value="SD">Sudan</option>
		        						<option value="SR">Suriname</option>
		        						<option value="SE">Svezia</option>
		        						<option value="CH">Svizzera</option>
		        						<option value="SZ">Swaziland</option>
		        						<option value="TJ">Tagikistan</option>
		        						<option value="TH">Tailandia</option>
		        						<option value="TW">Taiwan</option>
		        						<option value="TZ">Tanzania</option>
		        						<option value="TL">Timor Est (Timor Orientale)</option>
		        						<option value="TG">Togo</option>
		        						<option value="TK">Tokelau</option>
		        						<option value="TO">Tonga</option>
		        						<option value="TT">Trinidad &amp; Tobago</option>
		        						<option value="TN">Tunisia</option>
		        						<option value="TR">Turchia</option>
		        						<option value="TM">Turkmenistan</option>
		        						<option value="TV">Tuvalu</option>
		        						<option value="UA">Ucraina</option>
		        						<option value="UG">Uganda</option>
		        						<option value="HU">Ungheria</option>
		        						<option value="UY">Uruguay</option>
		        						<option value="US">USA</option>
		        						<option value="VI">US Virgin Islands</option>
		        						<option value="UZ">Uzbekistan</option>
		        						<option value="VU">Vanuatu</option>
		        						<option value="VA">Vaticano</option>
		        						<option value="VE">Venezuela</option>
		        						<option value="ZM">Zambia</option>
		        						<option value="ZW">Zimbawe</option>
	        						</select>
								</div>					
							</div>	
							<div>
								<div class="row">
									<label>Provincia</label>
									<div class="fields">
										<select name="provincia" id="provincia">
											<option value=""></option>
											<option value="AG" data-provincecode="AG">Agrigento</option>
											<option value="AL" data-provincecode="AL">Alessandria</option>
											<option value="AN" data-provincecode="AN">Ancona</option>
											<option value="AO" data-provincecode="AO">Aosta</option>
											<option value="AR" data-provincecode="AR">Arezzo</option>
											<option value="AP" data-provincecode="AP">Ascoli Piceno</option>
											<option value="AT" data-provincecode="AT">Asti</option>
											<option value="AV" data-provincecode="AV">Avellino</option>
											<option value="BA" data-provincecode="BA">Bari</option>
											<option value="BT" data-provincecode="BT">Barletta-Andria-Trani</option>
											<option value="BL" data-provincecode="BL">Belluno</option>
											<option value="BN" data-provincecode="BN">Benevento</option>
											<option value="BG" data-provincecode="BG">Bergamo</option>
											<option value="BI" data-provincecode="BI">Biella</option>
											<option value="BO" data-provincecode="BO">Bologna</option>
											<option value="BZ" data-provincecode="BZ">Bolzano</option>
											<option value="BS" data-provincecode="BS">Brescia</option>
											<option value="BR" data-provincecode="BR">Brindisi</option>
											<option value="CA" data-provincecode="CA">Cagliari</option>
											<option value="CL" data-provincecode="CL">Caltanissetta</option>
											<option value="CB" data-provincecode="CB">Campobasso</option>
											<option value="CI" data-provincecode="CI">Carbonia-Iglesias</option>
											<option value="CE" data-provincecode="CE">Caserta</option>
											<option value="CT" data-provincecode="CT">Catania</option>
											<option value="CZ" data-provincecode="CZ">Catanzaro</option>
											<option value="CH" data-provincecode="CH">Chieti</option>
											<option value="CO" data-provincecode="CO">Como</option>
											<option value="CS" data-provincecode="CS">Cosenza</option>
											<option value="CR" data-provincecode="CR">Cremona</option>
											<option value="KR" data-provincecode="KR">Crotone</option>
											<option value="CN" data-provincecode="CN">Cuneo</option>
											<option value="EN" data-provincecode="EN">Enna</option>
											<option value="FM" data-provincecode="FM">Fermo</option>
											<option value="FE" data-provincecode="FE">Ferrara</option>
											<option value="FI" data-provincecode="FI">Firenze</option>
											<option value="FG" data-provincecode="FG">Foggia</option>
											<option value="FC" data-provincecode="FC">Forlì-Cesena</option>
											<option value="FR" data-provincecode="FR">Frosinone</option>
											<option value="GE" data-provincecode="GE">Genova</option>
											<option value="GO" data-provincecode="GO">Gorizia</option>
											<option value="GR" data-provincecode="GR">Grosseto</option>
											<option value="IM" data-provincecode="IM">Imperia</option>
											<option value="IS" data-provincecode="IS">Isernia</option>
											<option value="AQ" data-provincecode="AQ">L'Aquila</option>
											<option value="SP" data-provincecode="SP">La Spezia</option>
											<option value="LT" data-provincecode="LT">Latina</option>
											<option value="LE" data-provincecode="LE">Lecce</option>
											<option value="LC" data-provincecode="LC">Lecco</option>
											<option value="LI" data-provincecode="LI">Livorno</option>
											<option value="LO" data-provincecode="LO">Lodi</option>
											<option value="LU" data-provincecode="LU">Lucca</option>
											<option value="MC" data-provincecode="MC">Macerata</option>
											<option value="MN" data-provincecode="MN">Mantova</option>
											<option value="MS" data-provincecode="MS">Massa - Carrara</option>
											<option value="MT" data-provincecode="MT">Matera</option>
											<option value="MD" data-provincecode="MD">Medio Campidano</option>
											<option value="VS" data-provincecode="VS">Medio Campidano</option>
											<option value="ME" data-provincecode="ME">Messina</option>
											<option value="MI" data-provincecode="MI">Milano</option>
											<option value="MO" data-provincecode="MO">Modena</option>
											<option value="MB" data-provincecode="MB">Monza e della Brianza</option>
											<option value="NA" data-provincecode="NA">Napoli</option>
											<option value="NO" data-provincecode="NO">Novara</option>
											<option value="NU" data-provincecode="NU">Nuoro</option>
											<option value="OG" data-provincecode="OG">Ogliastra</option>
											<option value="OT" data-provincecode="OT">Olbia - Tempio</option>
											<option value="OR" data-provincecode="OR">Oristano</option>
											<option value="PD" data-provincecode="PD">Padova</option>
											<option value="PA" data-provincecode="PA">Palermo</option>
											<option value="PR" data-provincecode="PR">Parma</option>
											<option value="PV" data-provincecode="PV">Pavia</option>
											<option value="PG" data-provincecode="PG">Perugia</option>
											<option value="PU" data-provincecode="PU">Pesaro e Urbino</option>
											<option value="PE" data-provincecode="PE">Pescara</option>
											<option value="PC" data-provincecode="PC">Piacenza</option>
											<option value="PI" data-provincecode="PI">Pisa</option>
											<option value="PT" data-provincecode="PT">Pistoia</option>
											<option value="PN" data-provincecode="PN">Pordenone</option>
											<option value="PZ" data-provincecode="PZ">Potenza</option>
											<option value="PO" data-provincecode="PO">Prato</option>
											<option value="RG" data-provincecode="RG">Ragusa</option>
											<option value="RA" data-provincecode="RA">Ravenna</option>
											<option value="RC" data-provincecode="RC">Reggio Calabria</option>
											<option value="RE" data-provincecode="RE">Reggio Emilia</option>
											<option value="RI" data-provincecode="RI">Rieti</option>
											<option value="RN" data-provincecode="RN">Rimini</option>
											<option value="RM" data-provincecode="RM">Roma</option>
											<option value="RO" data-provincecode="RO">Rovigo</option>
											<option value="SA" data-provincecode="SA">Salerno</option>
											<option value="SS" data-provincecode="SS">Sassari</option>
											<option value="SV" data-provincecode="SV">Savona</option>
											<option value="SI" data-provincecode="SI">Siena</option>
											<option value="SR" data-provincecode="SR">Siracusa</option>
											<option value="SO" data-provincecode="SO">Sondrio</option>
											<option value="TA" data-provincecode="TA">Taranto</option>
											<option value="TE" data-provincecode="TE">Teramo</option>
											<option value="TR" data-provincecode="TR">Terni</option>
											<option value="TO" data-provincecode="TO">Torino</option>
											<option value="TP" data-provincecode="TP">Trapani</option>
											<option value="TN" data-provincecode="TN">Trento</option>
											<option value="TV" data-provincecode="TV">Treviso</option>
											<option value="TS" data-provincecode="TS">Trieste</option>
											<option value="UD" data-provincecode="UD">Udine</option>
											<option value="VA" data-provincecode="VA">Varese</option>
											<option value="VE" data-provincecode="VE">Venezia</option>
											<option value="VB" data-provincecode="VB">Verbano - Cusio - Ossola</option>
											<option value="VC" data-provincecode="VC">Vercelli</option>
											<option value="VR" data-provincecode="VR">Verona</option>
											<option value="VV" data-provincecode="VV">Vibo Valentia</option>
											<option value="VI" data-provincecode="VI">Vicenza</option>
											<option value="VT" data-provincecode="VT">Viterbo</option>
										</select>
									</div>
								</div>
							</div>
										
							<div class="row">				
								<label>Data di nascita*</label>
								<div class="fields">						
							    	<input type="date" name="dataNascita" value="" placeholder="aaaa-mm-gg" max="2000-12-31" required>
								</div>					
							</div>	
					
							<div class="row">				
								<label>Telefono</label>
								<div class="fields">	
									<input type="text" name="telefono" value="" minlength="10" maxlength="10" placeholder="Inserisci Numero di Telefono">
								</div>					
							</div>
						
							<div class="row">
								<input id="registrati" type="submit" value="Registrati">
								<input id="reset" type="reset" value="Reset">
							</div>		
					</fieldset>
				</form>
			</section>
			
			<script>
			function showCustomer(username)
			{
  				var xhttp;    
  				if (username == "") 
  				{
    				document.getElementById("textError").innerHTML = "";
    				return;
  				}
  				xhttp = new XMLHttpRequest();
			    xhttp.onreadystatechange = function() 
			    {
			    	if (this.readyState == 4 && this.status == 200)
			    	{
			    	  document.getElementById("textError").innerHTML = "Attenzione: Username gia' in uso.";
			    	}
			    	else
			    	{
						document.getElementById("textError").innerHTML = "";
			    	}
			  	};
			 	xhttp.open("GET", "ServUsername?username="+username, true);
			  	xhttp.send();
			}
			</script>
			
		</div>
		<%@ include file="incluse/footer.html" %> 
	</body>
</html>