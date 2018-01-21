package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageBiglietto.Biglietto;
import packageBiglietto.BigliettoModel;


@WebServlet("/ServCancBiglietti")
public class ServCancBiglietti extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServCancBiglietti() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String concerto = request.getParameter("concerto");
		int idConc = Integer.parseInt(concerto);
		String biglietti = request.getParameter("numBiglietti");
		int numBiglietti = Integer.parseInt(biglietti);
		BigliettoModel bModel = new BigliettoModel();
		try 
		{
			for(int i = 0; i < numBiglietti; i++)
			{
				bModel.doDeleteConcerto(idConc);
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/successEliminaBiglietti.jsp");
		dispatcher.forward(request, response);
	}

}
