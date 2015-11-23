package project.persistence.entities.Events;

import org.json.JSONException;
import project.persistence.entities.Data.EventData;

import java.io.IOException;
import java.rmi.Naming;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
public class Concerts {
    public String eventDateName;
    public String name;
    public String dateOfShow;
    public String timeOfShow;
    public String userGroupName;
    public String eventHallName;
    public String imageSource;

    public Concerts(String nafn, String tonleikarod, String dagsetning, String timi, String tonleikahus, String salur, String mynd) {
        eventDateName = nafn;
        name = tonleikarod;
        dateOfShow = dagsetning;
        timeOfShow = timi;
        userGroupName = tonleikahus;
        eventHallName = salur;
        imageSource = mynd;
    }

    public Concerts() {
    }

    public String getEventDateName(){
        return eventDateName;
    }

    public String getName(){
        return name;
    }

    public String getDateOfShow(){
        return dateOfShow;
    }

    public String getTimeOfShow() {
        return timeOfShow;
    }

    public String getUserGroupName(){
        return userGroupName;
    }

    public String getEventHallName(){
        return eventHallName;
    }

    public String getImageSource(){
        return imageSource;
    }

    public void setEventDateName(String nafn){
        eventDateName = nafn;
    }

    public void setName(String tonleikarod){
        name = tonleikarod;
    }

    public void setDateOfShow(String dagsetning){
        dateOfShow = dagsetning;
    }

    public void setTimeOfShow(String timi) {
        timeOfShow = timi;
    }

    public void setUserGroupName(String tonleikahus){
        userGroupName = tonleikahus;
    }

    public void setEventHallName(String salur){
        eventHallName = salur;
    }

    public void setImageSource(String mynd){
        imageSource = mynd;
    }

}
