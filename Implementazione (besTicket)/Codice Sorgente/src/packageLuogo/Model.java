package packageLuogo;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Model 
{
	public void doSave(Luogo obj) throws SQLException;
	
	public boolean doDelete(int code) throws SQLException;
	
	public Luogo doRetrieveByKey(int cose) throws SQLException;
	
	public ArrayList<Luogo> doRetrieveAll() throws SQLException;
}
