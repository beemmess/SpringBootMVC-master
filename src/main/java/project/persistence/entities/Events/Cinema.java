package project.persistence.entities.Events;

import org.json.JSONArray;
import org.json.JSONException;
import project.persistence.entities.Data.EventData;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by bjarkimar23 on 28.10.2015.
 */
public class Cinema {
    public String title;
    public String restricted;
    public String image;
    public String[] theater;
    public String[][] schedule;

    public Cinema(String titill, String aldurstakmark, String mynd, String[] kvikmyndahus, String[][] dagskra){
        title = titill;
        restricted = aldurstakmark;
        image = mynd;
        theater = kvikmyndahus;
        schedule = dagskra;
    }

    public Cinema() {
    }

    public String getTitle(){
        return title;
    }

    public String getRestricted(){
        return restricted;
    }

    public String getImage(){
        return image;
    }

    public String[] getTheater(){
        return theater;
    }

    public String[][] getSchedule(){
        return schedule;
    }

    public void setTitle(String titill){
        title = titill;
    }

    public void setRestricted(String aldurstakmark){
        restricted = aldurstakmark;
    }

    public void setImage(String mynd){
        image = mynd;
    }

    public void setTheater(String[] kvikmyndahus){
        theater = kvikmyndahus;
    }

    public void setSchedule(String[][] dagskra){
        schedule = dagskra;
    }
}