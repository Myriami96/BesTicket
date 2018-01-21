package packageLuogo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class LuogoModel implements Model
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
	
	public void doSave(Luogo obj) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO luogo(Città, CAP, Via) VALUES ('"+obj.getCittà()+"', '"+obj.getCAP()+"', '"+obj.getVia()+"')";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			boolean res = statement.execute(sql);
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
		
		String sql = "DELETE FROM luogo WHERE Cod_Luogo="+code;
		
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

	public Luogo doRetrieveByKey(int cose) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM luogo Where Cod_Luogo='"+cose+"";
		Luogo luogo = new Luogo();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(res.next())
			{
				luogo.setCod_Luogo(res.getInt("Cod_Luogo"));
				luogo.setCittà(res.getString("Città"));
				luogo.setCAP(res.getString("CAP"));
				luogo.setVia(res.getString("Via"));
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
		
		return luogo;
	}

	public ArrayList<Luogo> doRetrieveByCittà(String città) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM luogo Where Città='"+città+"'";
		ArrayList <Luogo> arrayLuogo = new ArrayList<Luogo>();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Luogo luogo = new Luogo();
				luogo.setCod_Luogo(res.getInt("Cod_Luogo"));
				luogo.setCittà(res.getString("Città"));
				luogo.setCAP(res.getString("CAP"));
				luogo.setVia(res.getString("Via"));
				
				arrayLuogo.add(luogo);
			}
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return arrayLuogo;
	}
	
	public ArrayList<Luogo> doRetrieveByCAP(String cap) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM luogo Where CAP='"+cap+"'";
		ArrayList <Luogo> arrayLuogo = new ArrayList<Luogo>();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Luogo luogo = new Luogo();
				luogo.setCod_Luogo(res.getInt("Cod_Luogo"));
				luogo.setCittà(res.getString("Città"));
				luogo.setCAP(res.getString("CAP"));
				luogo.setVia(res.getString("Via"));
				
				arrayLuogo.add(luogo);
			}
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return arrayLuogo;
	}
	
	public ArrayList<Luogo> doRetrieveAll() throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM luogo";
		ArrayList<Luogo> arrayList = new ArrayList<Luogo>();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Luogo luogo = new Luogo();
				luogo.setCod_Luogo(res.getInt("Cod_Luogo"));
				luogo.setCittà(res.getString("Città"));
				luogo.setCAP(res.getString("CAP"));
				luogo.setVia(res.getString("Via"));
				
				arrayList.add(luogo);
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
