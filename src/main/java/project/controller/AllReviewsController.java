package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.persistence.entities.Attraction.AllReviews;
import project.persistence.entities.User.CurrentUser;
import project.service.AllReviewsService;

import java.util.Date;


@Controller
public class AllReviewsController {

    //Instance Variables
    AllReviewsService allReviewsService;

    @Autowired
    public AllReviewsController(AllReviewsService allReviewsService){
        this.allReviewsService = allReviewsService;
    }

    @RequestMapping(value = "/streetmap/restaurants", method = RequestMethod.GET)
    public  String allReviewsViewGet( Model model){
        model.addAttribute("allReviews", new AllReviews());
        //model.addAttribute("allReview", allReviewsService.findAll());

        //return the view
        return "Map/restaurants";
    }


    @RequestMapping(value = "/streetmap/restaurants", method = RequestMethod.POST)
    public String allReviewsViewPost(@RequestParam("restaurant") String restaurant, AllReviews allReviews, CurrentUser currentUser, Model model){


        model.addAttribute("allReviews", allReviewsService.create(allReviews, currentUser));

        model.addAttribute("allReview", allReviewsService.findByRestaurant(restaurant));


        //return the view
        return "Map/restaurants";
    }



}
