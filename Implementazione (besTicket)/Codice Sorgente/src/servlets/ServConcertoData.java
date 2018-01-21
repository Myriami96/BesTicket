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

@WebServlet("/ServConcertoData")
public class ServConcertoData extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
    public ServConcertoData()
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String città = request.getParameter("città");
		String artista = request.getParameter("artista");
		String data = request.getParameter("data");
		System.out.println(data);
		ConcertoModel cModel = new ConcertoModel();
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		try 
		{
			array = cModel.doRetrieveByCittaAndArtistaAndData(città, artista, data);
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<option value="+"-"+">"+"-"+"</option>");
			for(int i=0; i<array.size(); i++)
			{
				out.println("<option value="+array.get(i).getCod_Concerto()+">"+array.get(i).getOra()+"</option>");
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

