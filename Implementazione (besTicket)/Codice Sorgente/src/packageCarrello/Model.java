package packageCarrello;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Model
{
	public void doSave(OggettoCarrello obj) throws SQLException;
	
	public boolean doDelete(int code) throws SQLException;
	
	public OggettoCarrello doRetrieveByKey(int code) throws SQLException;
	
	public ArrayList<OggettoCarrello> doRetrieveAll(String Username) throws SQLException; 
}
