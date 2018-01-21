package packageConcerto;

public class Concerto
{

	public String getCod_Concerto() 
	{
		return Cod_Concerto;
	}
	
	public void setCod_Concerto(String cod_Concerto)
	{
		Cod_Concerto = cod_Concerto;
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
	
	public String getArtista()
	{
		return Artista;
	}
	
	public void setArtista(String artista) 
	{
		Artista = artista;
	}
	
	public String getLuogo()
	{
		return Luogo;
	}
	
	public void setLuogo(String luogo)
	{
		Luogo = luogo;
	}
	
	public String getCAP() 
	{
		return CAP;
	}
	
	public void setCAP(String CAP)
	{
		this.CAP = CAP;
	} 
	
	public String getCittà()
	{
		return NomeLuogo;
	}
	
	public void setCittà(String città)
	{
		NomeLuogo = città;
	}
	
	public String getNomeArtista()
	{
		return NomeArtista;
	}
	
	public void setNomeArtista(String nome)
	{
		NomeArtista = nome;
	}
	
	public String getImg()
	{
		return Img;
	}
	
	public void setImg(String img)
	{
		Img = img;
	}
	
	public double getPrezzo()
	{
		return prezzo;
	}
	
	public void setPrezzo(double prezzo)
	{
		this.prezzo = prezzo;
	}
	
	public String getVia()
	{
		return Via;
	}
	
	public void setVia(String via)
	{
		this.Via = via;
	}
	
	public int getBiglietto()
	{
		return Biglietto;
	}
	
	public void setBiglietto(int Biglietto)
	{
		this.Biglietto = Biglietto;
	}
	
	private String Cod_Concerto;
	private String Data;
	private String Ora;
	private String Artista;
	private String Luogo;
	private String NomeArtista;
	private String NomeLuogo;
	private String CAP;
	private String Img;
	private String Via;
	private int Biglietto;
	private double prezzo;
}
