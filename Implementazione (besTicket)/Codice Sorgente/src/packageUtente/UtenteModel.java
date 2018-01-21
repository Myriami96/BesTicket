package packageUtente;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UtenteModel implements Model 
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
	
	public void doSave(Utente obj) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO utente VALUES ('"+obj.getUsername()+"', '"+obj.getNome()+"', '"+obj.getCognome()+"', '"+obj.getVia()+"', '"+obj.getCAP()+"', '"+obj.getCittà()+"', '"+obj.getStato()+"', '"+obj.getTipo()+"', '"+obj.getTelefono()+"', '"+obj.getPwd()+"', '"+obj.geteMail()+"', '"+obj.getProvincia()+"', '"+obj.getData()+"')";                       
		
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

	public boolean doDelete(String username) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "DELETE FROM utente WHERE Username='"+username+"'";
		
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
	
	public boolean doUpdatePassword(String username, String password) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "UPDATE utente SET Pwd='"+password+"' WHERE Username='"+username+"'";
		
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
	
	public boolean doUpdateTipo(String username, String tipo) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "UPDATE utente SET Tipo='"+tipo+"' WHERE Username='"+username+"'";
		
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

	public Utente doRetrieveByKey(String username) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM utente Where Username='"+username+"'";
		Utente utente = new Utente();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(!res.next())
			{
				return null;
			}
			else
			{
				utente.setUsername(res.getString("Username"));
				utente.setNome(res.getString("Nome"));
				utente.setCognome(res.getString("Cognome"));
				utente.setVia(res.getString("Via"));
				utente.setCAP(res.getString("CAP"));
				utente.setCittà(res.getString("Città"));
				utente.setStato(res.getString("Stato"));
				utente.setTipo(res.getString("Tipo"));
				utente.setTelefono(res.getString("Telefono"));
				utente.setPwd(res.getString("Pwd"));
				utente.seteMail(res.getString("Email"));
				utente.setProvincia(res.getString("Provincia"));
				utente.setData(res.getString("data"));
				utente.setAutenticate(false);
			}
			
			while(res.next())
			{
				utente.setUsername(res.getString("Username"));
				utente.setNome(res.getString("Nome"));
				utente.setCognome(res.getString("Cognome"));
				utente.setVia(res.getString("Via"));
				utente.setCAP(res.getString("CAP"));
				utente.setCittà(res.getString("Città"));
				utente.setStato(res.getString("Stato"));
				utente.setTipo(res.getString("Tipo"));
				utente.setTelefono(res.getString("Telefono"));
				utente.setPwd(res.getString("Pwd"));
				utente.seteMail(res.getString("Email"));
				utente.setProvincia(res.getString("Provincia"));
				utente.setData(res.getString("data"));
				utente.setAutenticate(false);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return utente;
	}

	public Utente doRetrieveByMail(String email) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM utente Where Email='"+email+"'";
		Utente utente = new Utente();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(!res.next())
			{
				return null;
			}
			else
			{
				utente.setUsername(res.getString("Username"));
				utente.setNome(res.getString("Nome"));
				utente.setCognome(res.getString("Cognome"));
				utente.setVia(res.getString("Via"));
				utente.setCAP(res.getString("CAP"));
				utente.setCittà(res.getString("Città"));
				utente.setStato(res.getString("Stato"));
				utente.setTipo(res.getString("Tipo"));
				utente.setTelefono(res.getString("Telefono"));
				utente.setPwd(res.getString("Pwd"));
				utente.seteMail(res.getString("Email"));
				utente.setProvincia(res.getString("Provincia"));
				utente.setData(res.getString("data"));
				utente.setAutenticate(false);
			}
			
			while(res.next())
			{
				utente.setUsername(res.getString("Username"));
				utente.setNome(res.getString("Nome"));
				utente.setCognome(res.getString("Cognome"));
				utente.setVia(res.getString("Via"));
				utente.setCAP(res.getString("CAP"));
				utente.setCittà(res.getString("Città"));
				utente.setStato(res.getString("Stato"));
				utente.setTipo(res.getString("Tipo"));
				utente.setTelefono(res.getString("Telefono"));
				utente.setPwd(res.getString("Pwd"));
				utente.seteMail(res.getString("Email"));
				utente.setProvincia(res.getString("Provincia"));
				utente.setData(res.getString("data"));
				utente.setAutenticate(false);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return utente;
	}

	public ArrayList<Utente> doRetrieveAll() throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM Utente";
		ArrayList<Utente> arrayList = new ArrayList<Utente>();
	
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Utente utente = new Utente();
				utente.setUsername(res.getString("Username"));
				utente.setNome(res.getString("Nome"));
				utente.setCognome(res.getString("Cognome"));
				utente.setVia(res.getString("Via"));
				utente.setCAP(res.getString("CAP"));
				utente.setCittà(res.getString("Città"));
				utente.setStato(res.getString("Stato"));
				utente.setTipo(res.getString("Tipo"));
				utente.setTelefono(res.getString("Telefono"));
				utente.setPwd(res.getString("Pwd"));
				utente.seteMail(res.getString("Email"));
				utente.setProvincia(res.getString("Provincia"));
				utente.setData(res.getString("data"));
				utente.setAutenticate(false);
				
				arrayList.add(utente);
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
