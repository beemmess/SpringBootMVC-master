package project.persistence.entities.Data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import project.persistence.entities.Events.*;
import java.io.*;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.ParseException;


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

            String date = footballEvent.getString("date");
            String time = footballEvent.getString("time");
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

            String date = handballEvent.getString("Date");
            String time = handballEvent.getString("Time");

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
            String dateOfShow = concertsEvent.getString("dateOfShow");
            String timeOfShow = "time not available";
            boolean contains = dateOfShow.contains("T");
            if(contains){
                String[] dateTime = dateOfShow.split("T");
                dateOfShow = dateTime[0];
                timeOfShow = dateTime[1];
            }
            String userGroupName = concertsEvent.getString("userGroupName");
            String eventHallName = concertsEvent.getString("eventHallName");

            tonleikar[i] = new Concerts();
            tonleikar[i].setEventDateName(eventDateName);
            tonleikar[i].setName(name);
            tonleikar[i].setDateOfShow(dateOfShow);
            tonleikar[i].setTimeOfShow(timeOfShow);
            tonleikar[i].setUserGroupName(userGroupName);
            tonleikar[i].setEventHallName(eventHallName);
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
            String image = cinemaEvent.getString("image");

            JSONArray showTimes = cinemaEvent.getJSONArray("showtimes");
            String[] theater = new String[showTimes.length()];
            String[][] schedule = new String[result.length()][showTimes.length()];
            for(int j=0; j<showTimes.length(); j++) {
                 JSONObject showTime = showTimes.getJSONObject(j);
                 theater[j] = showTime.getString("theater");
                 schedule[i][j] = showTime.getString("schedule");
            }

            bio[i] = new Cinema();
            bio[i].setTitle(title);
            bio[i].setRestricted(restricted);
            bio[i].setImage(image);
            bio[i].setTheater(theater);
            bio[i].setSchedule(schedule);

        }
        return bio;
    }
}
