package packageUtente;

public class Utente 
{
	
	public String getUsername()
	{
		return Username;
	}
	
	public void setUsername(String username) 
	{
		Username = username;
	}
	
	public String getNome() 
	{
		return Nome;
	}
	
	public void setNome(String nome) 
	{
		Nome = nome;
	}
	
	public String getCognome()
	{
		return Cognome;
	}
	
	public void setCognome(String cognome)
	{
		Cognome = cognome;
	}
	
	public String getVia()
	{
		return Via;
	}
	
	public void setVia(String via)
	{
		Via = via;
	}
	
	public String getCAP() 
	{
		return CAP;
	}
	
	public void setCAP(String cAP)
	{
		CAP = cAP;
	}
	
	public String getCittà() 
	{
		return Città;
	}
	
	public void setCittà(String città)
	{
		Città = città;
	}
	
	public String getStato() 
	{
		return Stato;
	}
	
	public void setStato(String stato)
	{
		Stato = stato;
	}
	
	public String getTipo()
	{
		return Tipo;
	}
	
	public void setTipo(String tipo) 
	{
		Tipo = tipo;
	}
	
	public String getTelefono()
	{
		return Telefono;
	}
	
	public void setTelefono(String telefono)
	{
		Telefono = telefono;
	}
	
	public String getPwd()
	{
		return Pwd;
	}
	
	public void setPwd(String pwd) 
	{
		Pwd = pwd;
	}
	
	public String geteMail()
	{
		return eMail;
	}
	
	public void seteMail(String eMail)
	{
		this.eMail = eMail;
	}
	
	public String getProvincia()
	{
		return Provincia;
	}
	
	public void setProvincia(String provincia)
	{
		Provincia = provincia;
	}
	
	public String getData()
	{
		return data;
	}
	
	public void setData(String data) 
	{
		this.data = data;
	}
	
	public boolean isAutenticate() 
	{
		return isAutenticate;
	}
	
	public void setAutenticate(boolean isAutenticate) 
	{
		this.isAutenticate = isAutenticate;
	}
	
	public boolean isAdminUtenti()
	{
		if(Tipo.equalsIgnoreCase("AdminUtenti"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public boolean isAdminConcerti()
	{
		if(Tipo.equalsIgnoreCase("AdminConcerti"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	public String toString() 
	{
		return "Utente [Username=" + Username + ", Nome=" + Nome + ", Cognome=" + Cognome + ", Via=" + Via + ", CAP="
				+ CAP + ", Città=" + Città + ", Stato=" + Stato + ", Tipo=" + Tipo + ", Telefono=" + Telefono + ", Pwd="
				+ Pwd + ", eMail=" + eMail + ", Provincia=" + Provincia + ", data=" + data + ", isAutenticate="
				+ isAutenticate + "]";
	}

	private String Username;
	private String Nome;
	private String Cognome;
	private String Via;
	private String CAP;
	private String Città;
	private String Stato;
	private String Tipo = "Registrato";
	private String Telefono;
	private String Pwd;
	private String eMail;
	private String Provincia;
	private String data;
	private boolean isAutenticate = false;
}
