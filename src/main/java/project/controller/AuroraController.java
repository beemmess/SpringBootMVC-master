package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by audurgudjons on 24/11/15.
 */

@Controller
public class AuroraController {


    @RequestMapping(value="/aurora")
    public String aurora(Model model){
        System.out.println("blabla");
        String texti = "tralala";

        model.addAttribute("texti", texti);

        return "Forecast/aurora";
    }
}
