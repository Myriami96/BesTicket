package packageBiglietto;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BigliettoModel implements Model
{
	private static DataSource ds;
	
	static
	{
		try
		{
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			
			ds = (DataSource) envCtx.lookup("jdbc/besTicket");
		}
		catch(NamingException e)
		{
			e.printStackTrace();
		}
	}
	
	public void doSave(Biglietto obj, int Cod_Concerto) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO biglietto(Prezzo) VALUES ("+obj.getPrezzo()+")";
		String sqlMax = "SELECT max(Cod_Biglietto) as max from biglietto";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			boolean rs = statement.execute(sql);
			ResultSet res = statement.executeQuery(sqlMax);
			res.next();
			int max = res.getInt("max");
			String sql1 = "INSERT INTO ha VALUES ("+Cod_Concerto+", "+max+")";
			boolean rs1 = statement.execute(sql1);
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
	}

	public boolean doDelete(int code) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "DELETE FROM biglietto WHERE Cod_Biglietto="+code;
		
		boolean flag = false;
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			int res = statement.executeUpdate(sql);
			if(res>0)
			{
				flag = true;
			}
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return flag;
	}
	
	public boolean doDeleteConcerto(int cod_Concerto) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "DELETE FROM ha where Concerto = "+cod_Concerto+"\n"+ 
				"ORDER BY Biglietto DESC \n" + 
				"LIMIT 1";
		
		boolean flag = false;
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			int res = statement.executeUpdate(sql);
			if(res>0)
			{
				flag = true;
			}
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return flag;
	}

	public Biglietto doRetrieveByKey(int cose) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM biglietto Where Cod_Biglietto="+cose;
		Biglietto biglietto = new Biglietto();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(res.next())
			{
				biglietto.setCod_Biglietto(res.getInt("Cod_Biglietto"));
				biglietto.setPrezzo(res.getDouble("Prezzo"));
			}
			else
			{
				return null;
			}
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return biglietto;
	}

	public ArrayList<Biglietto> doRetrieveAll() throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM biglietti";
		ArrayList<Biglietto> arrayList = new ArrayList<Biglietto>();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Biglietto biglietto = new Biglietto();
				biglietto.setCod_Biglietto(res.getInt("Cod_Biglietto"));
				biglietto.setPrezzo(res.getDouble("Prezzo"));
				
				arrayList.add(biglietto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return arrayList;
	}
	
}
