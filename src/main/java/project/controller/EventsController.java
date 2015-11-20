package project.controller;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import project.persistence.entities.Events.Football;
import project.service.EventsService;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

/**
 * Created by hlingunnlaugsdottir on 10/11/15.
 */


@Controller
public class EventsController {

    // SERVICE HERNA
    EventsService eventsService;

    @Autowired
    public EventsController(EventsService eventsService) {
        this.eventsService = eventsService;
    }

    @RequestMapping(value="/events")
    public String events(Model model) {

        String texti = "Veldu tegund atburðar";
        model.addAttribute("texti",texti);
        return "Events/events";
    }

    @RequestMapping(value="events/football")
         public String football(Model model) throws ParseException, JSONException, IOException {
        System.out.println("llala");

        String texti = "Einhver texti herna";

        model.addAttribute("texti",texti);

        ArrayList<Football> fotboltaleikir = eventsService.getFootballEvents();
        for(int i=0; i<fotboltaleikir.size(); i++) {
            model.addAttribute("footballgame", fotboltaleikir.get(i));
        }
        return "Events/football";
    }

    @RequestMapping(value="events/handball")
    public String handball(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna";

        model.addAttribute("texti",texti);

        return "Events/handball";
    }

    @RequestMapping(value="events/cinema")
    public String cinema(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna";

        model.addAttribute("texti",texti);

        return "Events/cinema";
    }

    @RequestMapping(value="events/concerts")
    public String concerts(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna";

        model.addAttribute("texti",texti);

        return "Events/concerts";
    }
}
