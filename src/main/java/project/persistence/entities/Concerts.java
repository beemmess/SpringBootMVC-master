package project.persistence.entities;

import java.util.Date;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
public class Concerts {
    public String eventDateName;
    public String name;
    public Date dateOfShow;
    public String userGroupName;
    public String eventHallName;
    public String imageSource;

    public Concerts(String nafn, String tonleikarod, Date dagsetning, String tonleikahus, String salur, String mynd) {
        eventDateName = nafn;
        name = tonleikarod;
        dateOfShow = dagsetning;
        userGroupName = tonleikahus;
        eventHallName = salur;
        imageSource = mynd;
    }
}
