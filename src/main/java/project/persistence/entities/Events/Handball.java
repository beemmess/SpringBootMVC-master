package project.persistence.entities.Events;

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
