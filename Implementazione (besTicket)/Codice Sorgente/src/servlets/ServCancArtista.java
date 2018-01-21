package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageArtista.Artista;
import packageArtista.ArtistaModel;

@WebServlet("/ServCancArtista")
public class ServCancArtista extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServCancArtista()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String artista = request.getParameter("artista");
		int id = Integer.parseInt(artista);
		ArtistaModel aModel = new ArtistaModel();
		
		try 
		{
			aModel.doDelete(id);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/successEliminaArtista.jsp");
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