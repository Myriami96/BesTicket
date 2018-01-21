package packageArtista;

import java.util.*;
import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ArtistaModel implements Model 
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
	
	public void doSave(Artista obj) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "INSERT INTO artista(Nome, Genere, Tipo, Nazionalità, Img, Biglietti_Venduti) VALUES ('"+obj.getNome()+"', '"+obj.getGenere()+"', '"+obj.getTipo()+"', '"+obj.getNazionalità()+"', '"+obj.getImg()+"', "+obj.getNum_Biglietti()+")";
		
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
		
		String sql = "DELETE FROM artista WHERE Cod_Artista="+code;
		
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
	
	public boolean doRefresh(String obj) throws SQLException 
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "UPDATE artista set Biglietti_Venduti = Biglietti_Venduti +1 WHERE Nome='"+obj+"'";
		
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

	public Artista doRetrieveByKey(int code) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM artista Where Nome="+code;
		Artista artista = new Artista();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(res.next())
			{
				int cod = res.getInt("Cod_Artista");
				String nazionalità = res.getString("Nazionalità");
				String genere = res.getString("Genere");
				String nome = res.getString("Nome");
				String tipo = res.getString("Tipo");
				String img = res.getString("Img");
				int numBiglietti = res.getInt("Biglietti_Venduti");
				artista.setCod_Artista(cod);
				artista.setNazionalità(nazionalità);
				artista.setGenere(genere);
				artista.setNome(nome);
				artista.setTipo(tipo);
				artista.setImg(img);
				artista.setNum_Biglietti(numBiglietti);
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
		
		return artista;
	}
	
	public Artista doRetrieveByName(String nomeArtista) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM artista Where Nome='"+nomeArtista+"'";
		Artista artista = new Artista();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			if(res.next())
			{
				int cod = res.getInt("Cod_Artista");
				String nazionalità = res.getString("Nazionalità");
				String genere = res.getString("Genere");
				String nome = res.getString("Nome");
				String tipo = res.getString("Tipo");
				String img = res.getString("Img");
				int numBiglietti = res.getInt("Biglietti_Venduti");
				artista.setCod_Artista(cod);
				artista.setNazionalità(nazionalità);
				artista.setGenere(genere);
				artista.setNome(nome);
				artista.setTipo(tipo);
				artista.setImg(img);
				artista.setNum_Biglietti(numBiglietti);
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
		
		return artista;
	}
	
	public ArrayList<Artista> doRetrieveByGenere(String genereA) throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Artista> array = new ArrayList<Artista>();
		
		String sql = "SELECT * FROM artista Where Genere='"+genereA+"'";
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Artista artista = new Artista();
				int cod = res.getInt("Cod_Artista");
				String nazionalità = res.getString("Nazionalità");
				String genere = res.getString("Genere");
				String nome = res.getString("Nome");
				String tipo = res.getString("Tipo");
				String img = res.getString("Img");
				int numBiglietti = res.getInt("Biglietti_Venduti");
				artista.setCod_Artista(cod);
				artista.setNazionalità(nazionalità);
				artista.setGenere(genere);
				artista.setNome(nome);
				artista.setTipo(tipo);
				artista.setImg(img);
				artista.setNum_Biglietti(numBiglietti);
				array.add(artista);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return array;
	}

	public ArrayList<Artista> doRetrieveAll() throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM artista";
		ArrayList<Artista> arrayList = new ArrayList<Artista>();
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			while(res.next())
			{
				Artista artista = new Artista();
				int cod = res.getInt("Cod_Artista");
				String nazionalità = res.getString("Nazionalità");
				String genere = res.getString("Genere");
				String nome = res.getString("Nome");
				String tipo = res.getString("Tipo");
				String img = res.getString("Img");
				int numBiglietti = res.getInt("Biglietti_Venduti");
				artista.setCod_Artista(cod);
				artista.setNazionalità(nazionalità);
				artista.setGenere(genere);
				artista.setNome(nome);
				artista.setTipo(tipo);
				artista.setImg(img);
				artista.setNum_Biglietti(numBiglietti);
				
				arrayList.add(artista);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return arrayList;
	}
	
	public ArrayList<Artista> doRetrievePopolari() throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql = "SELECT * FROM artista ORDER BY Biglietti_Venduti DESC";
		ArrayList<Artista> arrayList = new ArrayList<Artista>();
		
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			for(int i = 0;  res.next() && i<10 ; i++)
			{
				Artista artista = new Artista();
				int cod = res.getInt("Cod_Artista");
				String nazionalità = res.getString("Nazionalità");
				String genere = res.getString("Genere");
				String nome = res.getString("Nome");
				String tipo = res.getString("Tipo");
				String img = res.getString("Img");
				int numBiglietti = res.getInt("Biglietti_Venduti");
				artista.setCod_Artista(cod);
				artista.setNazionalità(nazionalità);
				artista.setGenere(genere);
				artista.setNome(nome);
				artista.setTipo(tipo);
				artista.setImg(img);
				artista.setNum_Biglietti(numBiglietti);
				
				arrayList.add(artista);
			}
			
		}
		finally
		{
			if(connection != null)
				connection.close();
		}
		
		return arrayList;
	}
	
	public ArrayList<Artista> doRetrieveEconomici() throws SQLException
	{
		Connection connection = null;
		Statement statement = null;
		
		String sql ="SELECT distinct Img FROM artista, concerto, ha, biglietto  Where artista.Cod_Artista = concerto.Artista AND ha.Concerto = concerto.Cod_Concerto && ha.Biglietto = biglietto.Cod_Biglietto  Order By biglietto.Prezzo;";
		ArrayList<Artista> arrayList = new ArrayList<Artista>();
		
		
		try
		{
			connection = ds.getConnection();
			statement = connection.createStatement();
			
			ResultSet res = statement.executeQuery(sql);
			
			for(int i = 0;  res.next() && i<10 ; i++)
			{
				Artista artista = new Artista();
				String img = res.getString("Img");
				artista.setImg(img);
				
				arrayList.add(artista);
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
