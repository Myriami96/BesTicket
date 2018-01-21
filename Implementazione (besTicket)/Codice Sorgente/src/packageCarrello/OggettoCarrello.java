package packageCarrello;

public class OggettoCarrello
{
	
	public int getBiglietto() 
	{
		return Biglietto;
	}
	
	public void setBiglietto(int biglietto)
	{
		Biglietto = biglietto;
	}
	
	public String getUtente() 
	{
		return Utente;
	}
	
	public void setUtente(String utente) 
	{
		Utente = utente;
	}
	
	public String getNomeArtista() 
	{
		return NomeArtista;
	}

	public void setNomeArtista(String nomeArtista)
	{
		NomeArtista = nomeArtista;
	}

	public String getCittà() 
	{
		return Città;
	}

	public void setCittà(String città)
	{
		Città = città;
	}

	public String getData()
	{
		return Data;
	}

	public void setData(String data)
	{
		Data = data;
	}

	public String getOra()
	{
		return Ora;
	}

	public void setOra(String ora) 
	{
		Ora = ora;
	}
	
	public String getVia()
	{
		return Via;
	}

	public void setVia(String via) 
	{
		Via = via;
	}

	public double getPrezzo() 
	{
		return Prezzo;
	}

	public void setPrezzo(double prezzo) 
	{
		Prezzo = prezzo;
	}
	
	public int getNumBiglietti() 
	{
		return numBiglietti;
	}

	public void setNumBiglietti(int num) 
	{
		numBiglietti = num;
	}

	private int Biglietto;
	private String Utente;
	private String NomeArtista;
	private String Città;
	private String Data;
	private String Ora;
	private String Via;
	private double Prezzo;
	private int numBiglietti;
}
