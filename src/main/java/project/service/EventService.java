package project.service;

import org.json.JSONException;
import project.persistence.entities.Data.EventData;
import project.persistence.entities.Events.Cinema;
import project.persistence.entities.Events.Concerts;
import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Handball;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by hlingunnlaugsdottir on 20/11/15.
 */
public class EventService {

    public static ArrayList<Football> getFootballEvents() throws ParseException, IOException, JSONException {
        String a = "football";
        EventData data = new EventData(a);
        Football [] fotbolti = data.createFootballEvents();

        ArrayList<Football> fotboltiList = new ArrayList<Football>(Arrays.asList(fotbolti));
        return fotboltiList;
    }

    public static ArrayList<Handball> getHandballEvents() throws ParseException, IOException, JSONException {
        String a = "handball";
        EventData data = new EventData(a);
        Handball [] handball = data.createHandballEvents();

        ArrayList<Handball> handboltiList = new ArrayList<Handball>(Arrays.asList(handball));
        return handboltiList;
    }

    public static ArrayList<Concerts> getConcertsEvents() throws ParseException, IOException, JSONException {
        String a = "concerts";
        EventData data = new EventData(a);
        Concerts [] concerts = data.createConcertsEvents();

        ArrayList<Concerts> concertsList = new ArrayList<Concerts>(Arrays.asList(concerts));
        return concertsList;
    }

    public static ArrayList<Cinema> getCinemaEvents() throws ParseException, IOException, JSONException {
        String a = "cinema";
        EventData data = new EventData(a);
        Cinema [] cinema = data.createCinemaEvents();

        ArrayList<Cinema> cinemaList = new ArrayList<Cinema>(Arrays.asList(cinema));
        return cinemaList;
    }
}
