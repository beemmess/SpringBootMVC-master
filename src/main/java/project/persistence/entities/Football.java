package project.persistence.entities;

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
}
