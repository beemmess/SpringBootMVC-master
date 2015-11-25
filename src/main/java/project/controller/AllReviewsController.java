package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Attraction.AllReviews;
import project.persistence.entities.User.CurrentUser;
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

    @RequestMapping(value = "/streetmap/restaurants", method = RequestMethod.GET)
    public  String allReviewsViewGet(Model model){
        model.addAttribute("allReviews", new AllReviews());


        //return the view
        return "Map/restaurants";
    }

    @RequestMapping(value = "/streetmap/restaurants", method = RequestMethod.POST)
    public String allReviewsViewPost(@ModelAttribute("allReviews") AllReviews allReviews, CurrentUser currentUser, Model model){

        //allReviewsService.save(allReviews);

        allReviewsService.create(allReviews, currentUser);


        //return the view
        return "Map/restaurants";
    }

}
