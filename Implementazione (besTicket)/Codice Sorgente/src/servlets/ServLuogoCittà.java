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

@WebServlet("/ServLuogoCittà")
public class ServLuogoCittà extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServLuogoCittà()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String localita = request.getParameter("città");
		LuogoModel lModel = new LuogoModel();
		ArrayList<Luogo> array = new ArrayList<Luogo>();
		
		try 
		{
			array = lModel.doRetrieveByCittà(localita);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<option value="+"-"+">"+"-"+"</option>");
			for(int i=0; i<array.size(); i++)
			{
				out.println("<option value="+array.get(i).getCAP()+">"+array.get(i).getCAP()+"</option>");
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

