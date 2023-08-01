package util;

import junit.framework.Assert;
import org.apache.commons.lang3.RandomStringUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.*;


public class JavaUtilityMethods {
	
	public static String randomAlphaNumeric(int length){
        return RandomStringUtils.randomAlphanumeric(length);
    }
    public int randomNumeric(int length){
    	 Random rand = new Random();
         return rand.nextInt(length);
    }
	/* This method is overloaded */
	public int randomNumeric(){
		Random rand = new Random();
		return rand.nextInt(9999);
	}
}