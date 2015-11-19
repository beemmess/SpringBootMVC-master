package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.User.User;
import project.service.UserService;


@Controller
public class UserController {

    UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }



    @RequestMapping(value = "/userinf", method = RequestMethod.GET)
    public String getView(@ModelAttribute("user") User user, Model model){
        return "User/user";
    }

    @RequestMapping(value = "/userinf", method = RequestMethod.POST)
    public String getUsersPage(@ModelAttribute("user") User user, Model model){

        String msg = "hallo";

        model.addAttribute("Hallomsg", msg);
        userService.save(user);


        return "User/userSignUp";
    }




}
