package packageCarrello;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ModelCarrello implements Model
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
	
	public void doSave(OggettoCarrello obj) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO acquista (Biglietto, Utente, Carrello) VALUES ("+obj.getBiglietto()+", '"+obj.getUtente()+"',1);";
		
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
	
	public void doAcquisto(OggettoCarrello obj) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO acquista (Biglietto, Utente, Carrello) VALUES ("+obj.getBiglietto()+", '"+obj.getUtente()+"',0);";
		
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
		
		String sql = "DELETE FROM acquista WHERE Biglietto="+code;
		
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

	public OggettoCarrello doRetrieveByKey(int cose) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM acquista Where Cod_Biglietto="+cose;
		OggettoCarrello carrello = new OggettoCarrello();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(res.next())
			{
				carrello.setBiglietto(res.getInt("Biglietto"));
				carrello.setUtente(res.getString("Utente"));
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
		
		return carrello;
	}

	public ArrayList<OggettoCarrello> doRetrieveAll(String Username) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT biglietto.Cod_Biglietto ,artista.Nome, luogo.Città, concerto.Data, concerto.Ora, biglietto.Prezzo, luogo.Via FROM artista, concerto, luogo, biglietto, ha, acquista, utente Where artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND concerto.Cod_Concerto = ha.Concerto AND ha.Biglietto = biglietto.Cod_Biglietto AND acquista.Biglietto = biglietto.Cod_Biglietto AND acquista.Carrello = 1 AND acquista.Utente = utente.Username AND utente.Username = '"+Username+"';";
		ArrayList<OggettoCarrello> arrayList = new ArrayList<OggettoCarrello>();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				OggettoCarrello carrello = new OggettoCarrello();
				carrello.setBiglietto(res.getInt("biglietto.Cod_Biglietto"));
				carrello.setUtente(Username);
				carrello.setNomeArtista(res.getString("artista.Nome"));
				carrello.setCittà(res.getString("luogo.Città"));
				carrello.setData(res.getString("concerto.Data"));
				carrello.setOra(res.getString("concerto.Ora"));
				carrello.setVia(res.getString("luogo.Via"));
				carrello.setPrezzo(res.getDouble("biglietto.Prezzo"));
				
				arrayList.add(carrello);
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
