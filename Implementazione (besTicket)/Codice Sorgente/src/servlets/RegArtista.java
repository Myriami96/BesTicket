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


@WebServlet("/RegArtista")
public class RegArtista extends HttpServlet
{
    
	private static final long serialVersionUID = 1L;

	private String errore="";
	public RegArtista() 
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
		Artista artista = new Artista();
		ArtistaModel aModel = new ArtistaModel();
		if(controllo(request,response)) {
		artista.setNome(request.getParameter("nome").replace("'"," "));
		artista.setGenere(request.getParameter("genere").replace("'"," "));
		artista.setNazionalità(request.getParameter("nazionalita").replace("'"," "));
		artista.setTipo(request.getParameter("tipo").replace("'"," "));
		try 
		{
			aModel.doSave(artista);
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/creaLocalita.jsp");
		dispatcher.forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CreaArtista.jsp?errore=Errore : "+errore);
			dispatcher.forward(request, response);
		}
	}


	private boolean controllo(HttpServletRequest request, HttpServletResponse response) 
	{
		if(!Controllo.allLetter(request.getParameter("nazionalita")) || request.getParameter("nazionalita").length()<=0){
			errore="La nazionalita' inserita non è nel formato valido";
		}
		String nome = request.getParameter("nome");
		ArtistaModel aModel = new ArtistaModel();
		try 
		{
			Artista artista = aModel.doRetrieveByName(nome);
			if(artista != null)
			{
				errore="L'artista inserito e' gia' presente nel sistema.";
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
