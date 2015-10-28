package project.controller;

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
}
