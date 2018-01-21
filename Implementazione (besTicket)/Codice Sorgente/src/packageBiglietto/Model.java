package packageBiglietto;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Model 
{
	public void doSave(Biglietto obj, int Cod_Concerto) throws SQLException;
	
	public boolean doDelete(int code) throws SQLException;
	
	public Biglietto doRetrieveByKey(int code) throws SQLException;
	
	public ArrayList<Biglietto> doRetrieveAll() throws SQLException;
}
