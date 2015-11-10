package project.persistence.entities.Events;

import org.json.JSONException;
import project.persistence.entities.Data.EventData;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;


/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
public class Football extends Sports {

    public String homeTeam;
    public String awayTeam;
    public int counter;
    public String location;

    public Football(String heimalid, String utilid, int teljari, String stadsetning, String keppni, Date dagur, Date timi) {
        super(keppni, dagur, timi);
        homeTeam = heimalid;
        awayTeam = utilid;
        counter = teljari;
        location = stadsetning;
    }

    public Football() {
    }

    public String getHomeTeam() {return homeTeam;}

    public String getAwayTeam() {return awayTeam;}

    public int getCounter() {return counter;}

    public String getLocation() {return location;}

    public void setHomeTeam(String heimalid) {homeTeam = heimalid;}

    public void setAwayTeam(String utilid) {awayTeam = utilid;}

    public void setCounter(int teljari) {counter = teljari;}

    public void setLocation(String stadsetning) {location = stadsetning;}

    public static ArrayList<Football> getFootballEvents() throws ParseException, IOException, JSONException {
        String a = "football";
        EventData data = new EventData(a);
        Football [] fotbolti = data.createFootballEvents();

        ArrayList<Football> fotboltiList = new ArrayList<Football>(Arrays.asList(fotbolti));
        return fotboltiList;
    }

    public static void main (String args[]) throws ParseException, JSONException, IOException {
        ArrayList<Football> fotbolti = getFootballEvents();
        for(int i=0; i<fotbolti.size(); i++) {
            System.out.println(fotbolti.get(i).getCounter());
            System.out.println(fotbolti.get(i).getDate());
            System.out.println(fotbolti.get(i).getTime());
            System.out.println(fotbolti.get(i).getTournament());
            System.out.println(fotbolti.get(i).getLocation());
            System.out.println(fotbolti.get(i).getHomeTeam());
            System.out.println(fotbolti.get(i).getAwayTeam());
        }
    }
}

