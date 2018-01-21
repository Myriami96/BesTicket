package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageCarrello.Carrello;
import packageCarrello.OggettoCarrello;
import packageUtente.Utente;

@WebServlet("/ServAddCarrello")
public class ServAddCarrello extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServAddCarrello() 
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
		OggettoCarrello element = new OggettoCarrello();
		element.setNomeArtista((request.getParameter("artista")));
		element.setCittà(request.getParameter("citta"));
		element.setBiglietto(Integer.parseInt(request.getParameter("biglietto")));
		element.setData(request.getParameter("data"));
		element.setOra(request.getParameter("ora"));
		element.setVia(request.getParameter("via"));
		element.setPrezzo(Double.parseDouble(request.getParameter("prezzo")));
		element.setUtente(utente.getUsername());
		carrello.add(element);
		request.getSession().setAttribute("carrello", carrello);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Carrello.jsp");
		dispatcher.forward(request, response);
	}

}
