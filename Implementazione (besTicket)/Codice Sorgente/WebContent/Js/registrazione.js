function allLetter(uname)  
{   
	var letters = /^[A-Z a-z]+$/; 
	return validateField(uname, letters); 
}

function alphanumeric(uadd)  
{   
	var letters = /^[0-9a-zA-Z._-]+$/;  
	return validateField(uadd, letters);
}

function numeric(uadd)  
{   
	var letters = /^[0-9.,]+$/;  
	return validateField(uadd, letters);
}

function validateEmail(uemail)  
{  
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	return validateField(uemail, mailformat);
}

function validateDate(date)
{
	stringa=date.value.trim();
	try
    {
        if (stringa.length != 10)
        {
        		return false;
        }
        else if
             (
                 isNaN(stringa.substring(0, 4))       ||
                       stringa.substring(4, 5) != "-" ||
                 isNaN(stringa.substring(5, 7))       ||
                       stringa.substring(7, 8) != "-" ||
                 isNaN(stringa.substring(8, 10))
             )
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    catch (e)
    {
        return false;
    }

}

function validateField(field, format)  
{  
    if(field.value.trim().match(format))  
		return true;  
    else  
		return false;
}

function clearForm(form)
{
	//reset input border color
	var inputs = form.getElementsByTagName("input");
	for(var i = 0; i<inputs.length; i++)
		inputs[i].style.borderColor = "#8cc2de"; 
	
}

function validateForm(form)
{
	
	clearForm(form);
	
	var errpos=-1;

	if (!alphanumeric(form.username)){
		errpos = form["username"];
		alert("L'username non è nel formato adatto.\nLo spazio e i caratteri :,*/@\?=!£$%&() non sono ammessi");
	}else if (!allLetter(form.nome)){
		errpos = form["nome"];
		alert("Il nome puo' contenere solo caratteri alfabetici");
	}else if (!allLetter(form.cognome)){
		errpos = form["cognome"];
		alert("Il cognome puo' contenere solo caratteri alfabetici");
	}else if (!validateEmail(form.email)){
		errpos = form["email"];
		alert("L'indirizzo e-mail non e' nel formato corretto");
	}else if (!numeric(form.CAP)){
		errpos = form["CAP"];
		alert("Il CAP può avere solo valori numerici");
	}else if (!validateDate(form.dataNascita)){
		errpos = form["dataNascita"];
		alert("Data non corretta");
	}else if (form.email.value.trim() != form.email1.value.trim()){
		errpos = form["email1"];
		alert("La mail di conferma non corrisponde alla mail inserita");
	}else if (form.password.value.trim() != form.password1.value.trim()){
		errpos = form["password1"];
		alert("La password di conferma non corrisponde alla password inserita");
	}
	
	if (errpos != -1){
		errpos.style.borderColor = "red"; 

		var span = document.createElement('span');
		span.style.color = "red";
		
		return false;
	}
	
	return true;
}

function validateFormLogin(form)
{
	clearForm(form);

	var errpos=-1;
	
	if (!alphanumeric(form.username)){
		errpos = form["username"];
		alert("L'username non è nel formato adatto.\nLo spazio e i caratteri :,*/@\?=!£$%&() non sono ammessi");
	}
	
	if (errpos != -1){
		errpos.style.borderColor = "red"; 

		var span = document.createElement('span');
		span.style.color = "red";
		
		return false;
	}
	
	return true;
}

function validateFormAggiungiLuogo(form)
{
	clearForm(form);

	var errpos=-1;
	
	if (!allLetter(form.città)){
		errpos = form["name"];
		alert("Il nome puo' contenere solo caratteri alfabetici");
	}else if (!numeric(form.cap)){
		errpos = form["cap"];
		alert("Il CAP può avere solo valori numerici");
	}else if (!alphanumeric(form.via)){
		errpos = form["via"];
		alert("La via puo' contenere solo caratteri alfanumerici");
	}
	
	if (errpos != -1){
		errpos.style.borderColor = "red"; 

		var span = document.createElement('span');
		span.style.color = "red";
		
		return false;
	}
	
	return true;
}

function validateFormAggiungiBiglietti(form)
{
	clearForm(form);

	var errpos=-1;
	
	if (!allLetter(form.nome)){
		errpos = form["nome"];
		alert("Il nome puo' contenere solo caratteri alfabetici");
	}else if (!allLetter(form.genere)){
		errpos = form["genere"];
		alert("Il genere puo' contenere solo caratteri alfabetici");
	}else if (!allLetter(form.nazionalita)){
		errpos = form["nazionalita"];
		alert("La nazionalità puo' contenere solo caratteri alfabetici");
	}else if (!allLetter(form.tipo)){
		errpos = form["tipo"];
		alert("Il tipo puo' contenere solo caratteri alfabetici");
	}
	
	if (errpos != -1){
		errpos.style.borderColor = "red"; 

		var span = document.createElement('span');
		span.style.color = "red";
		
		return false;
	}
	
	return true;
}

function validateFormAggiungiArtista(form)
{
	clearForm(form);

	var errpos=-1;
	
	if (!numeric(form.prezzo)){
		errpos = form["prezzo"];
		alert("Il prezzo puo' contenere solo caratteri numerici");
	}
	
	if (errpos != -1){
		errpos.style.borderColor = "red"; 

		var span = document.createElement('span');
		span.style.color = "red";
		
		return false;
	}
	
	return true;
}

function toupper(field)
{
	field.value = field.value.toUpperCase();
}

function nazione(paese){
	if(paese.value == "IT")
	{
		document.getElementById("provincia").selectedIndex=0;
		document.getElementById("provincia").disabled = false;
	}
	else
	{
		document.getElementById("provincia").selectedIndex=0;
		document.getElementById("provincia").disabled = true;
	}
}
