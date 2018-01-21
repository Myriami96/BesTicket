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

@WebServlet("/ServCambioPwd")
public class ServCambioPwd extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServCambioPwd() 
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
		String vecchiaPwd = request.getParameter("password");
		String nuovaPwd = request.getParameter("newPassword");
		
		if(utente.getPwd().equals(vecchiaPwd))
		{
			utente.setPwd(nuovaPwd);
			UtenteModel uModel = new UtenteModel();
			try 
			{
				uModel.doUpdatePassword(utente.getUsername(), nuovaPwd);
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			request.getSession().setAttribute("user", utente);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cambioPwdSucc.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("cambioPwd.jsp?err=true");
		}
	}

}
