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


@WebServlet("/RegBiglietto")
public class RegBiglietto extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public RegBiglietto() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Biglietto biglietto = new Biglietto();
		BigliettoModel bModel = new BigliettoModel();
		
		biglietto.setPrezzo(Double.parseDouble(request.getParameter("prezzo")));
		int concerto = Integer.parseInt(request.getParameter("concerto"));
		int n = Integer.parseInt(request.getParameter("numBiglietti"));
		try 
		{
			for(int i = 0; i < n; i++)
			{
				bModel.doSave(biglietto, concerto);
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}

}
