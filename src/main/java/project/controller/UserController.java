package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import project.persistence.entities.Attraction.AllReviews;
import project.persistence.entities.User.CurrentUser;
import project.persistence.entities.User.User;
import project.persistence.entities.User.UserCreateForm;
import project.persistence.entities.User.Validator.UserCreateFormValidator;
import project.service.AllReviewsService;
import project.service.UserService;
import org.springframework.validation.Validator;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.NoSuchElementException;


@Controller
public class UserController {

    UserService userService;
    UserCreateFormValidator userCreateFormValidator;
    AllReviewsService allReviewsService;

    @Autowired
    public UserController(UserService userService, UserCreateFormValidator userCreateFormValidator, AllReviewsService allReviewsService) {
        this.userService = userService;
        this.userCreateFormValidator = userCreateFormValidator;
        this.allReviewsService = allReviewsService;
    }


    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(userCreateFormValidator);
        //binder.registerCustomEditor(String.class, "email", new UserEmailEditor());
    }



    ///USER REGISTRATION
    @RequestMapping(value = "/public/create", method = RequestMethod.GET)
    public String getRegistrationView(CurrentUser currentUser, Model model){

        model.addAttribute("form", new UserCreateForm());

        return "User/user";
    }

    @RequestMapping(value = "/public/create", method = RequestMethod.POST)
    public String UserRegistrationPage(@Valid @ModelAttribute("form") UserCreateForm form, BindingResult bindingResult, Model model){
        String userpage = "User page";
        model.addAttribute("userMsg", userpage);

        if (bindingResult.hasErrors()) {
             return "User/user";
        }
        try {
            userService.create(form);
        } catch (DataIntegrityViolationException e) {
            bindingResult.reject("email.exists", "Email already exists");

            return "User/user";
        }

        return "User/userSignUp";
    }



    //Current User. MyPage
    @RequestMapping(value = "/userpage/{id}",  method = RequestMethod.GET)
    public String getUserPage(@PathVariable("id") Long id, @ModelAttribute("currentUser") CurrentUser currentUser, Model model){

        String username = currentUser.getUsername();
        String userPage = "Welcome to user page, " + username;
        model.addAttribute("userPage", userPage);

        model.addAttribute("reviews", allReviewsService.findByUsername(currentUser.getUsername()));


        return "User/userPage";
    }


}
