package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import packageConcerto.Concerto;
import packageConcerto.ConcertoModel;

@WebServlet("/ServCancConcerto")
public class ServCancConcerto extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServCancConcerto()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String ora = request.getParameter("ora");
		int id = Integer.parseInt(ora);
		ConcertoModel cModel = new ConcertoModel();
		
		try 
		{
			cModel.doDelete(id);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/SuccessEliminaConcerto.jsp");
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

