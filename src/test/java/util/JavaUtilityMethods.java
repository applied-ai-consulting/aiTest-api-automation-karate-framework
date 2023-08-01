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
	JSONParser parser = new JSONParser();
	Object responseObj = null;
	JSONArray responseArray = null;
	JSONObject jsonObject, variantDisplayObject = null;
	public double[] sortInRankList(double[] a) {
	//	  Collections.reverse(Arrays.asList(a));
		Arrays.sort(a);
		return a;
	}
	
	public String randomAlphaNumeric(int length){
        return RandomStringUtils.randomAlphanumeric(length);
    }
    public int randomNumeric(int length){
    	 Random rand = new Random();
         return rand.nextInt(length);
    }

    public void verifyTime(Date actualActionTimestamp) throws java.text.ParseException {
    	Assert.assertTrue(Calendar.getInstance().getTime().getTime() - actualActionTimestamp.getTime() <200000); 	 	
    }
    
	public boolean verifyInReportResponse(String response, String variantCallId) throws ParseException {
		boolean actualInReportInResponse = false;
		  responseObj = parser.parse(response); 
		  responseArray = (JSONArray)responseObj;
		  JSONArray variantDisplayArray;
		  for(Object i : responseArray) {
			  jsonObject = (JSONObject) i; 
			  Object variantObject = jsonObject.get("variantDisplayData"); 
			  variantDisplayArray =(JSONArray)variantObject;
			  if(variantDisplayArray.size()==1) {
			  for(Object j : variantDisplayArray) { 
				  variantDisplayObject = (JSONObject) j; 
				  Object variantCallIdObject = variantDisplayObject.get("variantCallId"); 
				  if(variantCallIdObject.toString().equals(variantCallId)) 
					  actualInReportInResponse = (boolean) jsonObject.get("inReport"); 
			  } 
			  }
		  }
		  return actualInReportInResponse;	
	}
	
	public ArrayList<Object> getDrugsList(String response, String diseaseName) throws ParseException {
		ArrayList<Object> list = new ArrayList<Object>();
		responseObj = parser.parse(response);
		responseArray = (JSONArray)responseObj;
		 JSONArray diseaseArray,drugsArray = null;
         
         for(Object i : responseArray) {
        	 JSONObject jsonObject = (JSONObject) i;
        	 Object diseaseObject = jsonObject.get("diseases");
        	   if(diseaseObject.toString().contains(diseaseName)) {
        			Object drugsObject = jsonObject.get("drugs");
        			drugsArray =(JSONArray)drugsObject;
        			drugsArray.forEach(x->list.add(x));
        					}
       				  }

         return list;
	}

	public void saveBearerToken(String accessToken, String Institution){
		{
			String path = "target/test-classes/Tokens/BearerTokenFor"+Institution+".json";

			JSONObject json = new JSONObject();
			try {
				json.put("accessToken", accessToken);
			} catch (Exception e) {
				e.printStackTrace();
			}

			try (PrintWriter out = new PrintWriter(new FileWriter(path))) {
				out.write(json.toString());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public Boolean compareOtherResults(List<Map> widgets, Map otherResults) throws ParseException {
			for(Map i : widgets) {
			  if(otherResults.containsKey(i.keySet().toArray()[0])) {
				  if(!otherResults.containsValue(i.get(i.keySet().toArray()[0])))
					return false;
			}
			else
				return false;
		}
		return true;		
	}
	
	/* This method is overloaded */
	public int randomNumeric(){
		Random rand = new Random();
		return rand.nextInt(9999);
	}
}