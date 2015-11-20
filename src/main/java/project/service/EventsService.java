package project.service;

//Má líklegast henda út

import org.json.JSONException;
import project.persistence.entities.Events.Cinema;
import project.persistence.entities.Events.Concerts;
import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Handball;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

/**
 * Created by hlingunnlaugsdottir on 10/11/15.
 */
public interface EventsService {


    ArrayList<Football> getFootballEvents() throws ParseException, IOException, JSONException;

    ArrayList<Handball> getHandballEvents() throws ParseException, IOException, JSONException;

    ArrayList<Cinema> getCinemaEvents() throws ParseException, IOException, JSONException;

    ArrayList<Concerts> getConcertsEvents() throws ParseException, IOException, JSONException;
}
