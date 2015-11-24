package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Attraction.AllReviews;
import project.service.AllReviewsService;

import java.util.Date;

/**
 * Created by bjarkimar23 on 5.11.2015.
 */
@Controller
public class AllReviewsController {

    //Instance Variables
    AllReviewsService allReviewsService;

    @Autowired
    public AllReviewsController(AllReviewsService allReviewsService){
        this.allReviewsService = allReviewsService;
    }

    @RequestMapping(value = "/reviews", method = RequestMethod.GET)
    public  String allReviewsViewGet(Model model){
        model.addAttribute("allReviews", new AllReviews());

        model.addAttribute("allReviewses", allReviewsService.findAllReverseOrder());

        //return the view
        return "Attraction/allReviews";
    }

    @RequestMapping(value = "/reviews", method = RequestMethod.POST)
    public String allReviewsViewPost(@ModelAttribute("allReviews") AllReviews allReviews, Model model){

        allReviewsService.save(allReviews);

        model.addAttribute("allReviewses", allReviewsService.findAllReverseOrder());

        model.addAttribute("allRebiews", new AllReviews());

        //return the view
        return "Attraction/allReviews";
    }

}
