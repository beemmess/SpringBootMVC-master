package project.persistence.entities.Forecast;

import org.json.JSONException;
import project.persistence.entities.Data.GetData;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;


/**
 * Created by audurgudjons on 20/11/15.
 */
public class Weather {

    private String title;
    private String creation;
    private String valid_from;
    private String valid_to;
    private String content;

    public Weather() {}

    public Weather(String titill, String stofnad, String gilt_fra, String gilt_til, String vedurLysing){
        title = titill;
        creation = stofnad;
        valid_from = gilt_fra;
        valid_to = gilt_til;
        content = vedurLysing;
    }

    public String getTitle() { return title; }
    public String getCreation() { return creation; }
    public String getValid_from() { return  valid_from; }
    public String getValid_to() { return valid_to; }
    public String getContent() { return content; }

    public void setTitle(String titill) { title = titill;}
    public void setCreation(String stofnad) { creation = stofnad; }
    public void setValid_from(String gilt_fra) { valid_from = gilt_fra;}
    public void setValid_to(String gilt_til) { valid_to = gilt_til;}
    public void setContent(String vedurLysing) { content = vedurLysing; }


}
