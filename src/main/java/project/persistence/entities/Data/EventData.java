package project.persistence.entities.Data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;
import project.persistence.entities.Events.*;

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

    public Football[] createFootballEvents() throws JSONException, ParseException, IOException {
        JSONObject sportsFootball = readData("sports/football");
        JSONArray result = sportsFootball.getJSONArray("results");
        Football[] fotbolti = new Football[result.length()];
        for(int i=0; i < result.length(); i++) {
            JSONObject footballEvent = result.getJSONObject(i);

            int counter = footballEvent.getInt("counter");
            String dateStr = "2015-10-28";
            SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd");
            Date date = dt.parse(dateStr);
            String timeStr = footballEvent.getString("time");
            SimpleDateFormat tm = new SimpleDateFormat("HH:mm");
            Date time = tm.parse(timeStr);
            String tournament = footballEvent.getString("tournament");
            String location = footballEvent.getString("location");
            String homeTeam = footballEvent.getString("homeTeam");
            String awayTeam = footballEvent.getString("awayTeam");

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

    public Handball[] createHandballEvents() throws IOException, JSONException, ParseException {
        JSONObject sportsHandball = readData("sports/handball");
        JSONArray result = sportsHandball.getJSONArray("results");
        Handball [] handbolti = new Handball[result.length()];
        for(int i=0; i<result.length(); i++) {
            JSONObject handballEvent = result.getJSONObject(i);
            String teams = handballEvent.getString("Teams");
            String venue = handballEvent.getString("Venue");
            String tournament = handballEvent.getString("Tournament");
            String dateStr = "2015-10-28";
            SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd");
            Date date = dt.parse(dateStr);
            String timeStr = handballEvent.getString("Time");
            SimpleDateFormat tm = new SimpleDateFormat("HH.mm");
            Date time = tm.parse(timeStr);

            handbolti[i] = new Handball();
            handbolti[i].setTeams(teams);
            handbolti[i].setVenue(venue);
            handbolti[i].setTournament(tournament);
            handbolti[i].setDate(date);
            handbolti[i].setTime(time);
        }
        return handbolti;
    }

    public Concerts[] createConcertsEvents() throws IOException, JSONException, ParseException {
        JSONObject concerts = readData("concerts");
        JSONArray result = concerts.getJSONArray("results");
        Concerts [] tonleikar = new Concerts[result.length()];
        for(int i=0; i<result.length(); i++) {
            JSONObject concertsEvent = result.getJSONObject(i);
            String eventDateName = concertsEvent.getString("eventDateName");
            String name = concertsEvent.getString("name");
            String dateStr = concertsEvent.getString("dateOfShow");
            SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd");
            Date dateOfShow = dt.parse(dateStr);
            String userGroupName = concertsEvent.getString("userGroupName");
            String eventHallName = concertsEvent.getString("eventHallName");
            //String imageSource = concerts.getString("imageSource");

            tonleikar[i] = new Concerts();
            tonleikar[i].setEventDateName(eventDateName);
            tonleikar[i].setName(name);
            tonleikar[i].setDateOfShow(dateOfShow);
            tonleikar[i].setUserGroupName(userGroupName);
            tonleikar[i].setEventHallName(eventHallName);
            //tonleikar[i].setImageSource(imageSource);
        }
        return tonleikar;
    }
    public String title;
    public String restricted;
    public double imdbRate;
    public String imdbLink;
    public String image;
    public String showtimes;
    public String theater;
    public String schedule;
    public Cinema[] createCinemaEvents() throws IOException, JSONException, ParseException {
        JSONObject cinema = readData("cinema");
        JSONArray result = cinema.getJSONArray("results");
        Cinema [] bio = new Cinema[result.length()];
        for(int i=0; i<result.length(); i++) {
            JSONObject cinemaEvent = result.getJSONObject(i);
            String title = cinemaEvent.getString("title");
            String restricted = cinemaEvent.getString("restricted");
            //String imdbRateStr = cinemaEvent.getString("imdb");
            //double imdbRate = Double.parseDouble(imdbRateStr);
            String imdbLink = cinemaEvent.getString("imdbLink");
            String image = cinemaEvent.getString("image");
            String showTimes = cinemaEvent.getString("showtimes");
            //String theater = cinemaEvent.getString("theater");
            //String schedule = cinemaEvent.getString("schedule");

            bio[i] = new Cinema();
            bio[i].setTitle(title);
            bio[i].setRestricted(restricted);
            //bio[i].setImdbRate(imdbRate);
            bio[i].setImdbLink(imdbLink);
            bio[i].setImage(image);
            bio[i].setShowtimes(showTimes);
            //bio[i].setTheater(theater);
            //bio[i].setSchedule(schedule);

        }
        return bio;
    }

    public static void main(String args[]) throws ParseException {

    }
}
