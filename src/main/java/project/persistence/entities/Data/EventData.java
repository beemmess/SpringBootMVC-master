package project.persistence.entities.Data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;
import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Sports;

import java.io.*;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by audurgudjons on 28/10/15.
 */
public class EventData {
    public String eventType;

    public EventData(String atburdur){
        eventType = atburdur;
    }


    //reads data and returns as a string
    private static String readAll(Reader rd) throws IOException {
        StringBuilder sb = new StringBuilder();
        int cp;
        while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
        }
        return sb.toString();
    }

    //reads from url
    public static JSONObject readData(String typeOfData) throws IOException, JSONException {
        InputStream is = new URL("http://apis.is/"+typeOfData).openStream();
        try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            JSONObject json = new JSONObject(jsonText);
            return json;
        } finally {
            is.close();
        }
    }

    public Football[] createFootballEvent() throws JSONException, ParseException, IOException {
        JSONObject sports = readData("sports/football");
        JSONArray result = sports.getJSONArray("results");
        Football[] fotbolti = new Football[result.length()];
        for(int i=0; i < result.length(); i++) {
            JSONObject sportEvent = result.getJSONObject(i);

            int counter = sportEvent.getInt("counter");
            String dateStr = "2015-10-28";
            SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd");
            Date date = dt.parse(dateStr);
            String timeStr = sportEvent.getString("time");
            SimpleDateFormat tm = new SimpleDateFormat("HH:mm");
            Date time = tm.parse(timeStr);
            String tournament = sportEvent.getString("tournament");
            String location = sportEvent.getString("location");
            String homeTeam = sportEvent.getString("homeTeam");
            String awayTeam = sportEvent.getString("awayTeam");

            fotbolti[i] = new Football();
            fotbolti[i].setCounter(counter);
            fotbolti[i].setDate(date);
            fotbolti[i].setTime(time);
            fotbolti[i].setTournament(tournament);
            fotbolti[i].setLocation(location);
            fotbolti[i].setHomeTeam(homeTeam);
            fotbolti[i].setAwayTeam(awayTeam);
        }
        return fotbolti;
    }

    public static void main(String args[]) throws ParseException {

    }
}
