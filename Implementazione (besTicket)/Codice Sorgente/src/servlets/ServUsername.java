package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageUtente.Utente;
import packageUtente.UtenteModel;

@WebServlet("/ServUsername")
public class ServUsername extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
    public ServUsername() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username = request.getParameter("username");
		UtenteModel uModel = new UtenteModel();
		try 
		{
			Utente utente = uModel.doRetrieveByKey(username);
			if(utente != null)
			{
				response.setStatus(200);
			}
			else
			{
				response.setStatus(2);
			}
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
