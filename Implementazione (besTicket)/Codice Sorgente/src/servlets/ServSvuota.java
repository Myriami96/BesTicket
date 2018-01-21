package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageCarrello.Carrello;

/**
 * Servlet implementation class ServSvuota
 */
@WebServlet("/ServSvuota")
public class ServSvuota extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServSvuota() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Carrello newCarrello = new Carrello();
		request.getSession().setAttribute("carrello", newCarrello);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Carrello.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
