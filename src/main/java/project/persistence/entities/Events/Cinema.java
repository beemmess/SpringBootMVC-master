package project.persistence.entities.Events;

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
    public double imdbRate;
    public String imdbLink;
    public String image;
    public String showtimes;
    public String theater;
    public String schedule;

    public Cinema(String titill, String aldurstakmark, double imdbEinkunn, String imdbLinkur, String mynd, String syningartimar, String kvikmyndahus, String dagskra){
        title = titill;
        restricted = aldurstakmark;
        imdbRate = imdbEinkunn;
        imdbLink = imdbLinkur;
        image = mynd;
        showtimes = syningartimar;
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

    public double getImdbRate(){
        return imdbRate;
    }

    public String getImdbLink(){
        return imdbLink;
    }

    public String getImage(){
        return image;
    }

    public String getShowtimes(){
        return showtimes;
    }

    public String getTheater(){
        return theater;
    }

    public String getSchedule(){
        return schedule;
    }

    public void setTitle(String titill){
        title = titill;
    }

    public void setRestricted(String aldurstakmark){
        restricted = aldurstakmark;
    }

    public void setImdbRate(Double imdbEinkunn){
        imdbRate = imdbEinkunn;
    }

    public void setImdbLink(String imdbLinkur){
        imdbLink = imdbLinkur;
    }

    public void setImage(String mynd){
        image = mynd;
    }

    public void setShowtimes(String syningartimar){
        showtimes = syningartimar;
    }

    public void setTheater(String kvikmyndahus){
        theater = kvikmyndahus;
    }

    public void setSchedule(String dagskra){
        schedule = dagskra;
    }
}