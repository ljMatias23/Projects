import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import javafx.scene.image.Image;
import java.time.LocalDate;

public class CovidModel{
	private JsonElement jse;
  final LocalDate OLDEST_DATE = LocalDate.parse("2020-01-22");

	public boolean getWx(String state, LocalDate date){
    boolean flag = false;
    String[] states = {"Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "California", "Colorado",
      "Commonwealth of the Northern Mariana Islands", "Connecticut", "Delaware", "District of Columbia",
      "Florida", "Georgia", "Guam", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", 
      "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", 
      "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", 
      "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", 
      "South Dakota", "Tennessee", "Texas", "United States Virgin Islands", "Utah", "Vermont", "Virginia", "Washington",
      "West Virginia", "Wisconsin", "Wyoming"};

    for (int i=0; i < states.length; i++) {
      if (state.equals(states[i])){
        flag = true;
        break;
      }
    }

    if (flag == false)
      return false;


    try {
      URL wuURL = new URL("https://public.opendatasoft.com/api/records/1.0/search/?dataset=testing-data-covid19-usa&q=&sort=date&facet=date&facet=state_name&refine.date=" 
          + date +"&refine.state_name=" + state );

      // Open connection
      InputStream is = wuURL.openStream();
      BufferedReader br = new BufferedReader(new InputStreamReader(is));

      // Read the results into a JSON Element
      jse = new JsonParser().parse(br);

      // Close connection
      is.close();
      br.close();
    }
    catch (java.io.UnsupportedEncodingException uee)
    {
      uee.printStackTrace();
    }
    catch (java.net.MalformedURLException mue)
    {
      mue.printStackTrace();
    }
    catch (java.io.IOException ioe)
    {
      return false;
      //ioe.printStackTrace();
      //System.out.println("Invalid Zipcode");
    }
    catch (java.lang.NullPointerException npe)
    {
      System.out.println("Exception");
      return false;
      //npe.printStackTrace();
    }
    catch (java.lang.IndexOutOfBoundsException iobe)
    {
      System.out.println("IndexOutOfBoundsException");
      return false;
    }
    catch (java.lang.RuntimeException re)
    {
      return false;
    }
   
    return validData(state, date);
	}

  public boolean validData( String state, LocalDate date){
    if (state ==  null || date == null)
      return false;

    if (state.equals("") || date.toString().equals(""))
      return false;

    if (LocalDate.now().compareTo(date) <= 0){
      return false;
    }

    if (date.isBefore(OLDEST_DATE))
      return false;

    try {
      String error = jse.getAsJsonObject().get("error").getAsString();
      return false;
    }
    catch (java.lang.NullPointerException npe)
    {
      // We did not see an error
      return true;
    }
  }

   // gets total # of people who tested positive
   public String getTotPos(){
    return jse.getAsJsonObject().get("records").getAsJsonArray().get(0).getAsJsonObject().get("fields").getAsJsonObject().get("tot_positive").getAsString();
   }

   // gets total # of people who tested negative
   public String getTotNeg(){
    return jse.getAsJsonObject().get("records").getAsJsonArray().get(0).getAsJsonObject().get("fields").getAsJsonObject().get("tot_negative").getAsString();
   }

   // gets increased # of people who tested positive
   public String getIncPos(){
    return jse.getAsJsonObject().get("records").getAsJsonArray().get(0).getAsJsonObject().get("fields").getAsJsonObject().get("increase_positive").getAsString();
   }

   // gets increased # of people who tested negative
   public String getIncNeg(){
    return jse.getAsJsonObject().get("records").getAsJsonArray().get(0).getAsJsonObject().get("fields").getAsJsonObject().get("increase_negative").getAsString();
   }
}