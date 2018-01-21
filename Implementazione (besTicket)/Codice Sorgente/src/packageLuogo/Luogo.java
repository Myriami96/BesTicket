package packageLuogo;

public class Luogo 
{
	public int getCod_Luogo() 
	{
		return Cod_Luogo;
	}

	public void setCod_Luogo(int cod_Luogo)
	{
		Cod_Luogo = cod_Luogo;
	}
	
	public String getCittà() 
	{
		return Città;
	}
	
	public void setCittà(String città) 
	{
		Città = città;
	}
	
	public String getCAP() 
	{
		return CAP;
	}
	
	public void setCAP(String cAP)
	{
		CAP = cAP;
	}
	
	public String getVia() 
	{
		return Via;
	}
	
	public void setVia(String via) 
	{
		Via = via;
	}
	
	private int Cod_Luogo;
	private String Città;
	private String CAP;
	private String Via;
}
