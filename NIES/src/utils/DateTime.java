package utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class DateTime {

	public static final int SET_SIZE_REQUIRED = 10;
	public static final int NUMBER_RANGE = 100;

	public static String getDateTime() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		return dateFormat.format(date);
	}
	
	public static String getDateTime1(Date date) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		//Date date = new Date();
		return dateFormat.format(date);
	}

	public static String getDate() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		return dateFormat.format(date);
	}

	
	public static String getFileForUpload(Date date){
		DateFormat dateFormat = new SimpleDateFormat("yyMMdd_HHmmss");
		return dateFormat.format(date);
	}
	
	public static void main(String args[]) {
			/*Random rand = new Random(20071969);
			int pick = rand.nextInt(2451);
			System.out.println(pick);*/
		Date dd =  new Date();
		
		DateTime dateTime = new DateTime();
		
		System.out.println(dateTime.getFileForUpload(dd));
		
	}

	/*
	 * private static Random random = new Random(); private static final char[]
	 * charMapping = "abcdefghijklmnop".toCharArray();
	 * 
	 * public static String newSession() { byte[] bytes = new byte[20]; // 160
	 * bits random.nextBytes(bytes); char[] chars = new char[40]; for (int i =
	 * 0; i > 4) { int right = bytes[i] ; chars[i * 2] = charMapping[left];
	 * chars[i * 2 + 1] = charMapping[right]; } return String.valueOf(chars); }
	 */

}
