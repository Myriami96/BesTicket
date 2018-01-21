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

import packageConcerto.Concerto;
import packageConcerto.ConcertoModel;

@WebServlet("/ServArtConcerti")
public class ServArtConcerti extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
    public ServArtConcerti() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String nomeArtista = request.getParameter("nomeArtista");
		ConcertoModel cModel = new ConcertoModel();
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		try 
		{
			array = cModel.doRetrieveByArtista(nomeArtista);
			request.setAttribute("array", array);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/artistaConcerti.jsp");
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