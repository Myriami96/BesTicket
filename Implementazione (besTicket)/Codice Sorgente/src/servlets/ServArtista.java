package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageArtista.Artista;
import packageArtista.ArtistaModel;

@WebServlet("/ServArtista")
public class ServArtista extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServArtista()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String nome = request.getParameter("nome");
		ArtistaModel aModel = new ArtistaModel();
		Artista artista = new Artista();
		
		try 
		{
			artista = aModel.doRetrieveByName(nome);
			request.setAttribute("artista", artista);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/artista.jsp");
			dispatcher.forward(request, response);
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
