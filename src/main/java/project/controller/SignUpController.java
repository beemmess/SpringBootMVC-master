package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.User.SignUp;
import project.service.SignUpService;

/**
 * Created by hrabby on 3.11.2015.
 */

@Controller
public class SignUpController {

    //Instance Variables
    SignUpService signUpService;

    // Dependency Injection
    @Autowired
    public SignUpController(SignUpService signUpService) {
        this.signUpService = signUpService;
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signUpViewGet(Model model) {
        model.addAttribute("signUp", new SignUp());

       // model.addAttribute("signUp", signUpService.findAll());

        return "User/signUp";

    }


    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String signUpViewPost(@ModelAttribute("signUp") SignUp signUp, Model model) {

        signUpService.save(signUp);

        model.addAttribute("signUp", new SignUp());

        return "User/signUp";
    }

}
