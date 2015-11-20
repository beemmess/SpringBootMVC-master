package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;
import project.persistence.entities.User.Validator.UserCreateFormValidator;
import project.service.UserService;


import javax.validation.Valid;

@Controller
public class UserController {

    UserService userService;
    UserCreateFormValidator userCreateFormValidator;

    @Autowired
    public UserController(UserService userService, UserCreateFormValidator userCreateFormValidator) {
        this.userService = userService;
        this.userCreateFormValidator = userCreateFormValidator;
    }


    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(userCreateFormValidator);
    }


    @RequestMapping(value = "/userinf", method = RequestMethod.GET)
    public String getRegistrationView(@ModelAttribute("user") User user, Model model){
        String signup = "User registration form";
        model.addAttribute("signupMsg", signup);

        return "User/user";
    }

    @RequestMapping(value = "/userinf", method = RequestMethod.POST)
    public String getUserPage(User user, @Valid @ModelAttribute("form") UserCreateForm form, Model model, BindingResult bindingResult){
        String userpage = "User page";
        model.addAttribute("userMsg", userpage);


        if (bindingResult.hasErrors()) {
             return "User/userSignUp";
        }
        try {
            userService.create(form);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Email already exists");

            return "User/userSignUp";
        }

        //userService.create(form);

        return "User/userSignUp";
    }




}
