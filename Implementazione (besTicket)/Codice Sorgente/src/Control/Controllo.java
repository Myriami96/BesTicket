package Control;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Controllo {


	public static boolean allLetter(String uname)
	{
		String letters = "^[A-Z a-z]+$"; 
		return check(uname, letters); 
	}
	
	public static boolean alphanumeric(String uadd)  
	{   
		String letters = "^[0-9a-zA-Z._-]+$";  
		return check(uadd, letters);
	}

	public static boolean numeric(String uadd)  
	{   
		String letters = "^[0-9]+$";  
		return check(uadd, letters);
	}

	public static boolean validateEmail(String uemail)  
	{  
		 // Create the Pattern using the regex
        Pattern p = Pattern.compile(".+@.+\\.[a-z]+");
 
        // Match the given string with the pattern
        Matcher m = p.matcher(uemail);
 
        // check whether match is found
        boolean matchFound = m.matches();
 
        StringTokenizer st = new StringTokenizer(uemail, ".");
        String lastToken = null;
        while (st.hasMoreTokens()) {
            lastToken = st.nextToken();
        }
 
    // validate the country code
        if (matchFound && lastToken.length() >= 2
                && uemail.length() - 1 != lastToken.length()) {
 
            return true;
        } else {
            return false;
        }
	}

	public static boolean validateDate(String date)
	{
		String dateformat="yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(dateformat);
		sdf.setLenient(false);

		try {

			//if not valid, it will throw ParseException
			Date prova = sdf.parse(date);
			System.out.println(prova);

		} catch (ParseException e) {

			return false;
		}

		return true;
	}
	
	private static boolean check(String input, String regex)
	{
		  if(Pattern.matches(regex, input))
		    return true;
		  else
		    return false;
	}
}
