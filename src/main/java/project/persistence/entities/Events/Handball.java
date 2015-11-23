package project.persistence.entities.Events;

import org.json.JSONException;
import project.persistence.entities.Data.EventData;

import java.io.IOException;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */

public class Handball extends Sports {
    public String teams;
    public String venue;

    public Handball(String lid, String vollur, String keppni, String dagur, String timi) {
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

}
