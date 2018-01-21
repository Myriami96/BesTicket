package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.Controllo;
import packageArtista.Artista;
import packageArtista.ArtistaModel;
import packageLuogo.Luogo;
import packageLuogo.LuogoModel;

@WebServlet("/regLuogo")
public class RegLuogo extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	String errore="";
    public RegLuogo() 
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
		Luogo luogo = new Luogo();
		LuogoModel lModel = new LuogoModel();
		if(controllo(request,response)) {
		luogo.setCittà((request.getParameter("citta").replace("'"," ")));
		luogo.setCAP(request.getParameter("cap"));
		luogo.setVia(request.getParameter("via").replace("'"," "));
		try 
		{
			lModel.doSave(luogo);
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/creaConcerto.jsp");
		dispatcher.forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/creaLocalita.jsp?errore=Errore : "+errore);
			dispatcher.forward(request, response);
		}
	}

	private boolean controllo(HttpServletRequest request, HttpServletResponse response) 
	{
		if(!Controllo.allLetter(request.getParameter("citta")) || request.getParameter("citta").length()<=0){
			errore="La citta' inserita non è nel formato valido";
		}else if(!Controllo.numeric(request.getParameter("cap"))||request.getParameter("cap").length()<=0) {
			errore="Il CAP inserito non e' nel formato corretto";
		}
		
		if (errore.length() != 0)
			return false;
		else
			return true;
	}
}
