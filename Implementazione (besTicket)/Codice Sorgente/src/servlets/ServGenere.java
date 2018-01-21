package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageArtista.Artista;
import packageArtista.ArtistaModel;

@WebServlet("/ServGenere")
public class ServGenere extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServGenere()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String genere = request.getParameter("genere");
		ArtistaModel aModel = new ArtistaModel();
		ArrayList<Artista> array = new ArrayList<Artista>();
		
		try 
		{
			array = aModel.doRetrieveByGenere(genere);
			request.setAttribute("array", array);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/gen.jsp");
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
