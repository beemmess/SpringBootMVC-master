package project.controller;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Events.Cinema;
import project.persistence.entities.Events.Concerts;
import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Handball;
import project.service.EventService;
import project.service.EventsService;
import project.service.Implementation.EventsServiceImplementation;

import java.io.IOException;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 * Created by hlingunnlaugsdottir on 10/11/15.
 */


@Controller
public class EventsController {

    // SERVICE HERNA
    EventService eventService;
/*
    @Autowired
    public EventsController(EventsServiceImplementation eventsServiceImplementation) {
        this.eventsServiceImplementation = eventsServiceImplementation;
    }
*/
    @RequestMapping(value="/events")
    public String events(Model model) {

        String texti = "Select type of event";
        model.addAttribute("texti", texti);
        return "Events/events";
    }

    @RequestMapping(value="events/football", method = RequestMethod.GET)
    public String footballViewGet(Model model) throws ParseException, JSONException, IOException {
        String texti = "Next matches :";
        model.addAttribute("text",texti);

        ArrayList<Football> fotboltaleikir = eventService.getFootballEvents();
        model.addAttribute("footballEvent", fotboltaleikir);

        return "Events/football";
    }

    @RequestMapping(value="events/football/streetmap", method = RequestMethod.GET)
    public String footballStreetMapViewGet(Model model){
        String texti = "Map of Reykjavík's sport stadiums";
        model.addAttribute("texti",texti);
        return "Events/sportsStreetMap";
    }


    @RequestMapping(value="events/handball", method = RequestMethod.GET)
    public String handballViewGet(Model model) throws ParseException, JSONException, IOException {

        String texti = "Next matches :";
        model.addAttribute("text",texti);

        ArrayList<Handball> handboltaleikir = eventService.getHandballEvents();
        model.addAttribute("handballEvent", handboltaleikir);

        return "Events/handball";
    }

    @RequestMapping(value="events/handball/streetmap", method = RequestMethod.GET)
    public String handballStreetMapViewGet(Model model){
        String texti = "Map of Reykjavík's sport stadiums";
        model.addAttribute("texti",texti);
        return "Events/sportsStreetMap";
    }


    @RequestMapping(value="events/cinema", method = RequestMethod.GET)
    public String cinemaViewGet(Model model) throws ParseException, JSONException, IOException {

        String texti = "Movie schedule :";
        model.addAttribute("text",texti);

        ArrayList<Cinema> biomyndir = eventService.getCinemaEvents();
        model.addAttribute("movieEvent", biomyndir);

        return "Events/cinema";
    }

    @RequestMapping(value="events/cinema/streetmap", method = RequestMethod.GET)
    public String cinemaStreetMapViewGet(Model model){
        String texti = "Map of Reykjavík's movie theaters";
        model.addAttribute("texti",texti);
        return "Events/cinemaStreetMap";
    }

    @RequestMapping(value="events/concerts", method = RequestMethod.GET)
    public String concertsViewGet(Model model) throws ParseException, JSONException, IOException {

        String texti = "Next concerts :";
        model.addAttribute("text",texti);

        ArrayList<Concerts> tonleikar = eventService.getConcertsEvents();
        model.addAttribute("concertsEvent", tonleikar);

        return "Events/concerts";
    }

    @RequestMapping(value="events/concerts/streetmap", method = RequestMethod.GET)
    public String concertsStreetMapViewGet(Model model){
        String texti = "Map of Reykjavík's concert halls";
        model.addAttribute("texti",texti);
        return "Events/concertsStreetMap";
    }
}
