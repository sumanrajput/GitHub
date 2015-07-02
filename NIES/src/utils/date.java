package utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

public class date {
	
	 public void calanderYear(){
		    Calendar cal=Calendar.getInstance();
		    int year=cal.get(Calendar.YEAR);
		    System.out.println("Current Year: "+year );
		  }
	
	 
	 
	
	public static void main(String[] args) {
		new date().calanderYear();
		
/*//		try {
			// Some examples
			DateFormat formatter = new SimpleDateFormat("yyyy/mm/dd");
			Date date1 = new  Date("dd/mm/yyyy");
			//Date date = (Date) formatter.parse(date1.toString());
			//String sd = date.toString();
			System.out.println( date1);
		 
//			formatter = new SimpleDateFormat("dd-MMM-yy");
//			date = (Date) formatter.parse("29-Jan-02");
//			System.out.println( date);
//			// Parse a date and time; see also
//			// Parsing the Time Using a Custom Format
//			formatter = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
//			date = (Date) formatter.parse("2002.01.29.08.36.33");
//			System.out.println( date);
//			formatter = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss Z");
//			date = (Date) formatter.parse("Tue, 29 Jan 2002 22:14:02 -0500");
//		} catch (ParseException e) {
//		}
*/
		
		try {
		    // Some examples
		    DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		    Date date = (Date)formatter.parse("01/06/2010");
		    System.out.println( date.toString());
		    
		    String data = "01/06/2010";   
		    StringTokenizer tokens = new StringTokenizer(data, "/");   
		    while (tokens.hasMoreElements()) {   
		       System.out.println(tokens.nextElement());   
		    }  

//		    String data = "01/06/2010"; 
		    String dd=null , mm= null, yy = null;
//		    StringTokenizer tokens = new StringTokenizer(dob, "/");   
//		    while (tokens.hasMoreElements()) {   
//		       System.out.println(tokens.nextElement());   
//		    } 
		    
		    
		    String dob= "01/06/2010";
		    //String dd=null , mm= null, yy = null;
		    String[] array = dob.split("/"); 
			dd=array[1];
			mm=array[0];
			yy=array[2];
			System.out.println(yy+"-"+mm+"-"+dd);

		} catch (ParseException e) {
		}

		
	}
}
