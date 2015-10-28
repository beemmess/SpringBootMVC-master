package project.controller;

import java.util.Date;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
public class Sports {
    public String tournament;
    public Date date;
    public Date time;

    public Sports(String keppni, Date dagur, Date timi) {
        tournament = keppni;
        date = dagur;
        time = timi;
    }
}
