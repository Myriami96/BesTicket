package packageUtente;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Model 
{

	public void doSave(Utente obj) throws SQLException;
	
	public boolean doDelete(String username) throws SQLException;
	
	public boolean doUpdatePassword(String username, String password) throws SQLException;
	
	public Utente doRetrieveByKey(String username) throws SQLException;
	
	public ArrayList<Utente> doRetrieveAll() throws SQLException;
	
}
