function toggle_visibility(blo, non, hov, trasp)
{  
	document.getElementById(blo).style.display="inline-block";
	document.getElementById(non).style.display="none";
	document.getElementById(hov).style.backgroundColor="#8cc2de";
	document.getElementById(hov).style.color="#040438";
	document.getElementById(trasp).style.backgroundColor="#040438";
	document.getElementById(trasp).style.color="white";
}

function openMenu(divSfondo, divScelta)
{
	document.getElementById(divSfondo).style.width = "100%";
	document.getElementById(divScelta).style.visibility = "visible";
	document.getElementById(divScelta).style.opacity = "1";
}

function closeMenu(divSfondo, divAperto)
{
	document.getElementById(divSfondo).style.width = '0%';
	document.getElementById(divAperto).style.opacity = '0';
	document.getElementById(divAperto).style.visibility = 'hidden';
}

function switchMenu(divChiudere, divAprire)
{
	document.getElementById(divAprire).style.visibility = "visible";
	document.getElementById(divAprire).style.opacity = "1";
	document.getElementById(divChiudere).style.opacity = '0';
	document.getElementById(divChiudere).style.visibility = 'hidden';
}

function login()
{
	if(document.getElementById('TendinaLogin').style.display == "inline")
	{
		document.getElementById('TendinaLogin').style.display = "none";
		document.getElementById('login').style.backgroundColor = '#040438';
		document.getElementById('login').style.color = 'white';
	}
	else
	{
		document.getElementById('TendinaLogin').style.display = "inline";
		document.getElementById('login').style.backgroundColor = '#8cc2de';
		document.getElementById('login').style.color = '#040438';
	}
}

function logoutF()
{
	if(document.getElementById('TendinaLogout').style.display == "inline")
	{
		document.getElementById('TendinaLogout').style.display = "none";
		document.getElementById('logout').style.backgroundColor = '#040438';
		document.getElementById('logout').style.color = 'white';
	}
	else
	{
		document.getElementById('TendinaLogout').style.display = "inline";
		document.getElementById('logout').style.backgroundColor = '#8cc2de';
		document.getElementById('logout').style.color = '#040438';
	}
}

function cerca(form)
{
	var artista = form.nome;
	var a = artista.value.trim();
	if(a.lenght() == 0)
		return false;
	else
		return true;
}