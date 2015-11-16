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
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.sql.Time;

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

            String dagur = footballEvent.getString("date");
            String dateStr = changeFromIslDate(dagur);
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("ddMMyyyy");
            LocalDate date = LocalDate.parse(dateStr, formatter);

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
            //handbolti[i].setDate(date);
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
            //JSONArray showTimes = cinemaEvent.getJSONArray("showtimes");
            //JSONObject theaterObj = showTimes.getJSONObject(0);
            //String theater = theaterObj.getString("theater");
            //JSONObject scheduleObj = showTimes.getJSONObject(1);
            //String schedule = scheduleObj.getString("schedule");
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


    public static String changeFromIslDate(String islDate) {
        String dagur = islDate.substring(5,7);
        String month = islDate.substring(islDate.length() - 3);
        String manudur = "";
        if(month.equals("jan")) {
            manudur="01";
        } else if(month.equals("feb")) {
            manudur="02";
        } else if(month.equals("mar")) {
            manudur="03";
        } else if(month.equals("apr")) {
            manudur="04";
        } else if(month.equals("maí")) {
            manudur="05";
        } else if(month.equals("jún")) {
            manudur="06";
        } else if(month.equals("júl")) {
            manudur="07";
        } else if(month.equals("ágú")) {
            manudur="08";
        } else if(month.equals("sep")) {
            manudur="09";
        } else if(month.equals("okt")) {
            manudur="10";
        } else if(month.equals("nóv")) {
            manudur="11";
        } else if(month.equals("des")) {
            manudur="12";
        }

        String a = dagur + manudur + "2015";
        return a;
    }


    public static void main(String args[]) throws ParseException {
        String date = "fim. 12. nóv";
        String dagur = changeFromIslDate(date);
        System.out.println(dagur);
    }
}
