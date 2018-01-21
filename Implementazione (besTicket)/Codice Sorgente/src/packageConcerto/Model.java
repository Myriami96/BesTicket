package packageConcerto;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Model 
{
	public void doSave(Concerto obj) throws SQLException;
	
	public boolean doDelete(int code) throws SQLException;
	
	public Concerto doRetrieveByKey(int code) throws SQLException;
	
	public ArrayList<Concerto> doRetrieveByCitta(String città) throws SQLException;
	
	public ArrayList<Concerto> doRetrieveByArtista(String nomeArtista) throws SQLException;
	
	public ArrayList<Concerto> doRetrieveAll() throws SQLException;
	
}
