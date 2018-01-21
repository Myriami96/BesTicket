package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import packageCarrello.Carrello;
import packageCarrello.ModelCarrello;

@WebServlet("/ServLogout")
public class ServLogout extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServLogout()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Carrello carrello = (Carrello) request.getSession().getAttribute("carrello");
		ModelCarrello carModel = new ModelCarrello();
		for(int i=0; i<carrello.size(); i++)
		{
			try 
			{
				carModel.doSave(carrello.get(i));
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		HttpSession session = request.getSession();
        session.invalidate();

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/successLogout.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}
