package project.persistence.entities.Data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;
import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Sports;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by audurgudjons on 28/10/15.
 */
public class EventData {
    public String eventType;

    public EventData(String atburdur){
        eventType = atburdur;
    }


    public JSONArray fetchData() {
        JSONArray result = {"results" :[{"date": "2015-01-15", "time": "19:15", "tournament": "Innimót - Úrslitakeppni mfl. karla"}]};
        return  result;
    }

    public Sports[] createEvent() throws JSONException, ParseException {
        JSONArray result = fetchData();
        Sports[] sportevent = new Sports[result.length()];
        for(int i=0; i < result.length(); i++) {
            JSONObject sportEvent = result.getJSONObject(i);

            String dateStr = sportEvent.getString("date");
            SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd");
            Date date = dt.parse(dateStr);
            String timeStr = sportEvent.getString("time");
            SimpleDateFormat tm = new SimpleDateFormat("HH:mm");
            Date time = tm.parse(timeStr);
            String tournament = sportEvent.getString("tournament");

            sportevent[i] = new Sports();
            sportevent[i].setDate(date);
            sportevent[i].setTime(time);
            sportevent[i].setTournament(tournament);
        }
        return sportevent;
    }


    public static void main(String args[]) throws ParseException {

    }
}
