package project.persistence.entities.Events;

import java.util.Date;


/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
public class Football extends Sports {

    public String homeTeam;
    public String awayTeam;
    public int counter;
    public String location;

    public Football(String heimalid, String utilid, int teljari, String stadsetnding, String keppni, Date dagur, Date timi) {
        super(keppni, dagur, timi);
        homeTeam = heimalid;
        awayTeam = utilid;
        counter = teljari;
        location = stadsetnding;
    }


    public String getHomeTeam() {
        return homeTeam;
    }

    public String getAwayTeam(){
        return awayTeam;
    }

    public int getCounter() {
        return counter;
    }

    public String getLocation() {
        return location;
    }

    public void setHomeTeam(String heimalid) {
        homeTeam = heimalid;
    }

    public void setAwayTeam(String utilid) {
        awayTeam = utilid;
    }

    public void setCounter(int teljari) {
        counter = teljari;
    }

    public void setLocation(String stadsetning) {
        location = stadsetning;
    }
}

