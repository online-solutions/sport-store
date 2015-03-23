package beta.store.utils;

import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class Utils {
	public static Calendar getCalendar(int day, int month, int year) {
	    Calendar date = Calendar.getInstance();
	    date.set(Calendar.YEAR, year);
	    date.set(Calendar.MONTH, month);
	    date.set(Calendar.DAY_OF_MONTH, day);
	    return date;
	}
	
	public static Date getDate(int day, int month, int year){
		return getCalendar(day, month, year).getTime();
	}
	
	public static String getPriceInUSD(double price){
		NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(Locale.US);
		return currencyFormat.format(price);
	}

}
