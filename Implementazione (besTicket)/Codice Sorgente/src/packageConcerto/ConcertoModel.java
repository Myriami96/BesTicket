package packageConcerto;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConcertoModel implements Model
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

	public void doSave(Concerto obj) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO concerto (Data, Ora, Artista, Luogo) VALUES ('"+obj.getData()+"', '"+obj.getOra()+"', "+Integer.parseInt(obj.getArtista())+", "+Integer.parseInt(obj.getLuogo())+")";
		
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
		
		String sql = "DELETE FROM concerto WHERE Cod_Concerto="+code;
		
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

	public Concerto doRetrieveByKey(int code) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT distinct luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo FROM luogo, concerto, artista, ha, biglietto WHERE concerto.Cod_Concerto="+code+" AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
		Concerto concerto = new Concerto();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				concerto.setPrezzo(res.getDouble("biglietto.Prezzo"));
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return concerto;
	}
	
	public ArrayList<Concerto> doRetrieveByCitta(String città) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		String sql = "SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo FROM luogo, concerto, artista, ha, biglietto WHERE luogo.Città='"+città+"' AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Concerto concerto = new Concerto();
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				concerto.setPrezzo(res.getDouble("biglietto.Prezzo"));
				concerto.setVia(res.getString("luogo.Via"));
				statement = connection.createStatement();
				String sql1 = "SELECT distinct luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo, max(biglietto.Cod_Biglietto) AS maxID FROM luogo, concerto, artista, ha, biglietto WHERE luogo.Città='"+città+"' AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
				ResultSet res1 = statement.executeQuery(sql1);
				res1.next();
				concerto.setBiglietto(res1.getInt("maxID"));
				
				array.add(concerto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}
	
	public ArrayList<Concerto> doRetrieveByArtista(String nomeArtista) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		String sql ="SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo FROM artista, luogo, concerto, ha, biglietto WHERE artista.Nome = '"+nomeArtista+"' AND artista.Cod_Artista = concerto.Artista AND luogo.Cod_Luogo = concerto.Luogo AND concerto.Cod_Concerto = ha.Concerto AND biglietto.Cod_Biglietto = ha.Biglietto;";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Concerto concerto = new Concerto();
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				concerto.setPrezzo(res.getDouble("biglietto.Prezzo"));
				concerto.setVia(res.getString("luogo.Via"));
				statement = connection.createStatement();
				String sql1 = "SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo, max(biglietto.Cod_Biglietto) as maxID FROM artista, luogo, concerto, ha, biglietto WHERE artista.Nome = '"+nomeArtista+"' AND artista.Cod_Artista = concerto.Artista AND luogo.Cod_Luogo = concerto.Luogo AND concerto.Cod_Concerto = ha.Concerto AND biglietto.Cod_Biglietto = ha.Biglietto;";;
				ResultSet res1 = statement.executeQuery(sql1);
				res1.next();
				concerto.setBiglietto(res1.getInt("maxID"));
				
				array.add(concerto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}
	
	public ArrayList<Concerto> doRetrieveByCittaAndArtista(String città, String artista) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		String sql = "SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo FROM luogo, concerto, artista, ha, biglietto WHERE luogo.Città='"+città+"' AND artista.Nome='"+artista+"' AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Concerto concerto = new Concerto();
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				concerto.setPrezzo(res.getDouble("biglietto.Prezzo"));
				concerto.setVia(res.getString("luogo.Via"));
				statement = connection.createStatement();
				String sql1 = "SELECT distinct luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo, max(biglietto.Cod_Biglietto) AS maxID FROM luogo, concerto, artista, ha, biglietto WHERE luogo.Città='"+città+"' AND artista.Nome='"+artista+"' AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
				ResultSet res1 = statement.executeQuery(sql1);
				res1.next();
				concerto.setBiglietto(res1.getInt("maxID"));
				
				array.add(concerto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}
	
	public ArrayList<Concerto> doRetrieveByCittaAndArtistaAndData(String città, String artista, String data) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		String sql = "SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo FROM luogo, concerto, artista, ha, biglietto WHERE luogo.Città='"+città+"' AND artista.Nome='"+artista+"' AND concerto.Data='"+data+"' AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Concerto concerto = new Concerto();
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				concerto.setPrezzo(res.getDouble("biglietto.Prezzo"));
				concerto.setVia(res.getString("luogo.Via"));
				statement = connection.createStatement();
				String sql1 = "SELECT distinct luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo, max(biglietto.Cod_Biglietto) AS maxID FROM luogo, concerto, artista, ha, biglietto WHERE luogo.Città='"+città+"' AND artista.Nome='"+artista+"' AND concerto.Data='"+data+"' AND artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo AND ha.Biglietto = biglietto.Cod_Biglietto AND ha.Concerto = concerto.Cod_Concerto";
				ResultSet res1 = statement.executeQuery(sql1);
				res1.next();
				concerto.setBiglietto(res1.getInt("maxID"));
				
				array.add(concerto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}
	
	public ArrayList<Concerto> doRetrieveByArtistaAll() throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		String sql ="SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo FROM artista, luogo, concerto, ha, biglietto WHERE artista.Cod_Artista = concerto.Artista AND luogo.Cod_Luogo = concerto.Luogo AND concerto.Cod_Concerto = ha.Concerto AND biglietto.Cod_Biglietto = ha.Biglietto group by artista.nome ";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Concerto concerto = new Concerto();
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				concerto.setPrezzo(res.getDouble("biglietto.Prezzo"));
				concerto.setVia(res.getString("luogo.Via"));
				statement = connection.createStatement();
				String sql1 = "SELECT distinct luogo.Via, luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img, biglietto.Prezzo, max(biglietto.Cod_Biglietto) as maxID FROM artista, luogo, concerto, ha, biglietto WHERE artista.Cod_Artista = concerto.Artista AND luogo.Cod_Luogo = concerto.Luogo AND concerto.Cod_Concerto = ha.Concerto AND biglietto.Cod_Biglietto = ha.Biglietto;";;
				ResultSet res1 = statement.executeQuery(sql1);
				res1.next();
				concerto.setBiglietto(res1.getInt("maxID"));
				
				array.add(concerto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}

	public ArrayList<Concerto> doRetrieveAll() throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Concerto> array = new ArrayList<Concerto>();
		
		String sql = "SELECT luogo.Città, concerto.Cod_Concerto, concerto.Data, concerto.Ora, concerto.Luogo, concerto.Artista, artista.Nome, luogo.CAP, artista.Img FROM luogo, concerto, artista WHERE artista.Cod_Artista = concerto.Artista AND concerto.Luogo = luogo.Cod_Luogo;";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Concerto concerto = new Concerto();
				concerto.setCittà(res.getString("luogo.Città"));
				concerto.setCod_Concerto(res.getString("concerto.Cod_Concerto"));
				concerto.setData(res.getString("concerto.Data"));
				concerto.setOra(res.getString("concerto.Ora"));
				concerto.setLuogo(res.getString("concerto.Luogo"));
				concerto.setArtista(res.getString("concerto.Artista"));
				concerto.setNomeArtista(res.getString("artista.Nome"));
				concerto.setCAP(res.getString("luogo.CAP"));
				concerto.setImg(res.getString("artista.Img"));
				
				array.add(concerto);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}

}
