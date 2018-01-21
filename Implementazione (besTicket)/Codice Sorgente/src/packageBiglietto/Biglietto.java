package packageBiglietto;

public class Biglietto
{
		
	public int getCod_Biglietto() 
	{
		return Cod_Biglietto;
	}
	
	public void setCod_Biglietto(int cod_Biglietto) 
	{
		Cod_Biglietto = cod_Biglietto;
	}
	
	public double getPrezzo()
	{
		return Prezzo;
	}
	
	public void setPrezzo(double prezzo) 
	{
		Prezzo = prezzo;
	}
	
	private int Cod_Biglietto;
	private double Prezzo;
}
