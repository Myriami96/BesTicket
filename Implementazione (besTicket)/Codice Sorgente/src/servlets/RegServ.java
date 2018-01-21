package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.StringTokenizer;
import java.util.regex.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import packageUtente.*;
import Control.Controllo;


@WebServlet("/RegServ")
public class RegServ extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private String errore="";
    public RegServ()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		errore="";
		if(controllo(request,response)) {
		Utente utente = new Utente();
		utente.setUsername(request.getParameter("username"));
		utente.setNome(request.getParameter("nome").replace("'"," "));
		utente.setCognome(request.getParameter("cognome").replace("'"," "));
		utente.setVia(request.getParameter("via").replace("'"," "));
		utente.setCAP(request.getParameter("CAP"));
		utente.setCittà(request.getParameter("localita").replace("'"," "));
		utente.setStato(request.getParameter("paese").replace("'"," "));
		utente.setTipo("Registrato");
		utente.setTelefono(request.getParameter("telefono"));
		utente.setPwd(request.getParameter("password"));
		utente.seteMail(request.getParameter("email").replace("'"," "));
		utente.setProvincia(request.getParameter("provincia"));
		utente.setData(request.getParameter("dataNascita"));
		utente.setAutenticate(false);
		
		
		UtenteModel UModel = new UtenteModel();
		try 
		{
			UModel.doSave(utente);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/successRegistrazione.jsp");
		dispatcher.forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/failureRegistrazione.jsp?errore="+errore);
			dispatcher.forward(request, response);
		}
	}

	private boolean controllo(HttpServletRequest request, HttpServletResponse response) 
	{
		if (!Controllo.alphanumeric(request.getParameter("username")) || request.getParameter("username").length()<=0){
			errore="L'username non e' nel formato adatto. Lo spazio e i caratteri :,*/\\?=!£$%&() non sono ammessi";
		}else if (!Controllo.allLetter(request.getParameter("nome")) || request.getParameter("nome").length()<=0){
			errore="Il nome puo' contenere solo caratteri alfabetici.";
		}else if (!Controllo.allLetter(request.getParameter("cognome")) || request.getParameter("cognome").length()<=0){
			errore="Il cognome puo' contenere solo caratteri alfabetici.";
		}else if (!Controllo.validateEmail(request.getParameter("email")) || request.getParameter("email").length()<=0){
			errore="L'indirizzo e-mail non e' nel formato corretto.";
		}else if (!Controllo.alphanumeric(request.getParameter("password")) || request.getParameter("password").length()<=0){
			errore="La Password non e' nel formato adatto. Lo spazio e i caratteri :,*/\\?=!£$%&() non sono ammessi";
		}else if (!Controllo.numeric(request.getParameter("CAP")) || request.getParameter("CAP").length()<=0){
			errore="Il CAP puo' avere solo valori numerici.";
		}else if(!Controllo.allLetter(request.getParameter("localita")) || request.getParameter("localita").length()<=0){
			errore="La localita' inserita non è nel formato valido";
		}else if(request.getParameter("telefono")!="") {
			if (!Controllo.numeric(request.getParameter("telefono"))){
			errore="Il Campo telefono puo' avere solo valori numerici.";
			}
		}else if (!Controllo.validateDate(request.getParameter("dataNascita")) || request.getParameter("dataNascita").length()<=0){
			errore="Data non corretta.";
		}

		String username = request.getParameter("username");
		UtenteModel uModel = new UtenteModel();
		try 
		{
			Utente utente = uModel.doRetrieveByKey(username);
			if(utente != null)
			{
				errore="Username inserita e' gia' presente nel sistema.";
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		String email = request.getParameter("email").replaceAll("'", " ");
		try 
		{
			Utente utente = uModel.doRetrieveByMail(email);
			if(utente != null)
			{
				errore="Email inserita e' gia' presente nel sistema.";
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		if (errore.length() != 0)
			return false;
		else
			return true;
	}
	
}
