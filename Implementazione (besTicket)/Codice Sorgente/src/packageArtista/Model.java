package packageArtista;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Model 
{

	public void doSave(Artista obj) throws SQLException;
	
	public boolean doDelete(int code) throws SQLException;
	
	public Artista doRetrieveByKey(int code) throws SQLException;
	
	public Artista doRetrieveByName(String nomeArtista) throws SQLException;
	
	public ArrayList<Artista> doRetrieveByGenere(String genereA) throws SQLException;
	
	public ArrayList<Artista> doRetrieveAll() throws SQLException;
	
	public ArrayList<Artista> doRetrievePopolari() throws SQLException; 
	
	public ArrayList<Artista> doRetrieveEconomici() throws SQLException;
	
}
