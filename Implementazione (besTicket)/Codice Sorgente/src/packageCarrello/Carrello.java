package packageCarrello;

import java.util.ArrayList;

public class Carrello
{
	public ArrayList<OggettoCarrello> getCarrello()
	{
		return array;
	}
	
	public void setCarrello(ArrayList<OggettoCarrello> carrello)
	{
		this.array = carrello;
		this.size = carrello.size();
	}
	
	public OggettoCarrello get(int index)
	{
		if(index < size)
		{
			return array.get(index);
		}
		else
		{
			return null;
		}
	}
	
	public void add(OggettoCarrello element)
	{
		array.add(element);
		size += 1;
	}
	
	public int size()
	{
		return size;
	}
	
	private ArrayList<OggettoCarrello> array = new ArrayList<OggettoCarrello>();
	private int size = 0;
}
