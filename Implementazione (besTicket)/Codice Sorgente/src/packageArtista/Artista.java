package packageArtista;

public class Artista 
{
	public int getCod_Artista() 
	{
		return Cod_Artista;
	}
	
	public void setCod_Artista(int cod_Artista)
	{
		Cod_Artista = cod_Artista;
	}
	
	public String getNome() 
	{
		return Nome;
	}
	
	public void setNome(String nome) 
	{
		Nome = nome;
	}
	
	public String getNazionalit�()
	{
		return Nazionalit�;
	}
	
	public void setNazionalit�(String nazionalit�)
	{
		Nazionalit� = nazionalit�;
	}
	
	public String getGenere() 
	{
		return Genere;
	}
	
	public void setGenere(String genere) 
	{
		Genere = genere;
	}
	
	public String getTipo()
	{
		return Tipo;
	}
	
	public void setTipo(String tipo)
	{
		Tipo = tipo;
	}
	
	public String getImg()
	{
		return Img;
	}
	
	public void setImg(String img)
	{
		Img = img;
	}
	
	public int getNum_Biglietti() 
	{
		return Num_Biglietti;
	}
	
	public void setNum_Biglietti(int numBiglietti)
	{
		numBiglietti = Num_Biglietti;
	}
	
	public String toString()
	{
		return "Artista [Cod_Artista=" + Cod_Artista + ", Nome=" + Nome + ", Nazionalit�=" + Nazionalit� + ", Genere="
				+ Genere + ", Tipo=" + Tipo + ", Img=" + Img + ", Biglietti Venduti= " + Num_Biglietti +"]";
	}

	private int Cod_Artista;
	private String Nome;
	private String Nazionalit�;
	private String Genere;
	private String Tipo;
	private String Img;
	private int Num_Biglietti = 0;
}
