package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageConcerto.Concerto;
import packageConcerto.ConcertoModel;


@WebServlet("/RegConcerto")
public class RegConcerto extends HttpServlet
{

	private static final long serialVersionUID = 1L;
	
    public RegConcerto()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Concerto concerto = new Concerto();
		ConcertoModel cModel = new ConcertoModel();
		
		concerto.setArtista(request.getParameter("artista"));
		concerto.setLuogo(request.getParameter("luogo"));
		concerto.setData(request.getParameter("data"));
		concerto.setOra(request.getParameter("ora"));
		try 
		{
			cModel.doSave(concerto);
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/creaBiglietto.jsp");
		dispatcher.forward(request, response);
		
	}

	
}
