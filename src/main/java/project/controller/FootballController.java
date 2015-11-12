package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hlingunnlaugsdottir on 10/11/15.
 */


@Controller
public class FootballController {

    // SERVICE HERNA

    @RequestMapping(value="/football")
    public String football(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna";

        model.addAttribute("texti",texti);

        return "Events/football";
    }
}
