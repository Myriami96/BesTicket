package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageUtente.Utente;
import packageUtente.UtenteModel;

/**
 * Servlet implementation class ServCancAccount
 */
@WebServlet("/ServCancAccount")
public class ServCancAccount extends HttpServlet 
{

	private static final long serialVersionUID = 1L;
	
    public ServCancAccount()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Utente utente = (Utente) request.getSession().getAttribute("user");
		UtenteModel uModel = new UtenteModel();
		try 
		{
			uModel.doDelete(utente.getUsername());
			request.getSession().invalidate();
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
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
