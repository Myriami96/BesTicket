package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageArtista.ArtistaModel;
import packageBiglietto.BigliettoModel;
import packageCarrello.Carrello;
import packageCarrello.ModelCarrello;

@WebServlet("/ServAcquisto")
public class ServAcquisto extends HttpServlet 
{
	private static final long serialVersionUID = 1L; 

    public ServAcquisto() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Carrello carrello = (Carrello) request.getSession().getAttribute("carrello");
		ModelCarrello carModel = new ModelCarrello();
		ArtistaModel mArtista = new ArtistaModel();
		BigliettoModel bModel = new BigliettoModel();
		for(int i=0; i<carrello.size(); i++)
		{
			try 
			{
				carModel.doAcquisto(carrello.get(i));
				mArtista.doRefresh(carrello.get(i).getNomeArtista());
				bModel.doDelete(carrello.get(i).getBiglietto());
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		Carrello newCarrello = new Carrello();
		request.getSession().setAttribute("carrello", newCarrello);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/acquistoSucc.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
