package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.persistence.entities.Attraction.AllReviews;
import project.service.AllReviewsService;

import java.util.Map;

/**
 * Created by bjarkimar23 on 16.11.2015.
 */
@Controller
public class StreetMapController {
    // SERVICE HERNA
    AllReviewsService allReviewsService;

    @Autowired
    public StreetMapController(AllReviewsService allReviewsService){
        this.allReviewsService = allReviewsService;
    }

    @ModelAttribute
    public void addingCommonObjects(Model model){

        model.addAttribute("headMsg", "Streetmap with: ");
    }

    @RequestMapping(value="/streetmap")
    public String streetMap(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna um KOOOOOOORT";

        model.addAttribute("texti",texti);

        return "Map/streetMap";



    }

    @RequestMapping(value="/streetmap/restaurants")
    public String restaurant(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna um KOOOOOOORT";

        model.addAttribute("texti",texti);

        return "Map/restaurants";

    }

    @RequestMapping(value="/streetmap/museum")
    public String musuem(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna um KOOOOOOORT";

        model.addAttribute("texti",texti);

        return "Map/museum";



    }

    @RequestMapping(value="/streetmap/hotel")
    public String hotel(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna um KOOOOOOORT";

        model.addAttribute("texti",texti);

        return "Map/hotel";



    }

    @RequestMapping(value="/streetmap/walking1")
    public String walking1(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna um KOOOOOOORT";

        model.addAttribute("texti",texti);

        return "Map/walking1";



    }

}
