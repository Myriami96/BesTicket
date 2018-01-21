package servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageCarrello.Carrello;
import packageCarrello.ModelCarrello;
import packageUtente.*;


@WebServlet("/ServLogin")
public class ServLogin extends HttpServlet
{

	private static final long serialVersionUID = 1L;
	
    public ServLogin() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Utente utente = (Utente) request.getSession().getAttribute("user");
		Carrello carrello = (Carrello) request.getSession().getAttribute("carrello");
		
		ModelCarrello carModel = new ModelCarrello();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UtenteModel uModel = new UtenteModel();
		try 
		{
			if(username.length()==0)
			{
				response.sendRedirect("index.jsp");
			}
			else
			{
				Utente userDb = uModel.doRetrieveByKey(username);
				if(userDb == null)
				{
					response.sendRedirect("accedi.jsp");	
				}
				else if(userDb.getUsername().equalsIgnoreCase(username) && userDb.getPwd().equals(password))
				{
					carrello.setCarrello(carModel.doRetrieveAll(username));
					for(int i=0 ; i< carrello.size(); i++)
					{
						carModel.doDelete(carrello.get(i).getBiglietto());
					}
					utente = userDb;
					utente.setAutenticate(true);
					request.getSession().setAttribute("user", utente);
					request.getSession().setAttribute("carrello", carrello);
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/successLogin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					response.sendRedirect("accedi.jsp");	
				}
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
	}

}
