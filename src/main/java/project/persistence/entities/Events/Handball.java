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

public class Handball extends Sports {
    public String teams;
    public String venue;

    public Handball(String lid, String vollur, String keppni, Date dagur, Date timi) {
        super(keppni, dagur, timi);
        teams = lid;
        venue = vollur;
    }

    public Handball() {
    }

    public String getTeams() {
        return teams;
    }

    public String getVenue() {
        return venue;
    }

    public void setTeams(String lid) {
        teams = lid;
    }

    public void setVenue(String vollur) {
        venue = vollur;
    }
    public static ArrayList<Handball> getHandballEvents() throws ParseException, IOException, JSONException {
        String a = "handball";
        EventData data = new EventData(a);
        Handball [] handball = data.createHandballEvents();

        ArrayList<Handball> handboltiList = new ArrayList<Handball>(Arrays.asList(handball));
        return handboltiList;
    }

    public static void main(String args[]) throws ParseException, JSONException, IOException {
        ArrayList<Handball> handbolti = getHandballEvents();
        for (int i = 0; i < handbolti.size(); i++) {
            System.out.println(handbolti.get(i).getTeams());
            System.out.println(handbolti.get(i).getVenue());
            System.out.println(handbolti.get(i).getTournament());
            System.out.println(handbolti.get(i).getDate());
            System.out.println(handbolti.get(i).getTime());
        }
    }
}
