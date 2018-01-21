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

import packageLuogo.Luogo;
import packageLuogo.LuogoModel;

@WebServlet("/ServCancLuogo")
public class ServCancLuogo extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServCancLuogo()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String localita = request.getParameter("via");
		int id = Integer.parseInt(localita);
		LuogoModel lModel = new LuogoModel();
		
		try 
		{
			lModel.doDelete(id);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/successEliminaLuogo.jsp");
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
