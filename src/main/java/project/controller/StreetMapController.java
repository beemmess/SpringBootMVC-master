package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * Created by bjarkimar23 on 16.11.2015.
 */
@Controller
public class StreetMapController {
    // SERVICE HERNA

    @RequestMapping(value="/streetmap")
    public String football(Model model) {
        System.out.println("llala");

        String texti = "Einhver texti herna um KOOOOOOORT";

        model.addAttribute("texti",texti);

        return "Map/streetMap";



    }

    // Pruuuuufudót tutorial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
    @RequestMapping(value="/streetmap/{currencyShortName}")
    public String hallo(@PathVariable("currencyShortName") String currencyShortName, Model model){


        String msg = "Hallo " + currencyShortName;

        model.addAttribute("halloMsg", msg);

        //return the view
        return "Map/streetMap";
    }

    @RequestMapping(value="/streetmap/{currencyShortName}/{verd}", method = RequestMethod.Post)
    public String hallo(@PathVariable Map<String,String> pathVars, Model model){

        String currencyShortName = pathVars.get("currencyShortName");
        String verd = pathVars.get("verd");

        String msg = "Hallo " + currencyShortName +" " + verd;

        model.addAttribute("halloMsg", msg);

        //return the view
        return "Map/streetMap";
    }


    @RequestMapping (value = "/streetmap", method = RequestMethod.GET)
    public String bla(Model model){
        return "Map/prufa";
    }

    @RequestMapping(value="/streetmap/{currencyShortName}", method = RequestMethod.POST)
    public String submitBla(@RequestParam Map<String,String> pathVars, Model model){

        String currencyShortName = pathVars.get("currencyShortName");
        String verd = pathVars.get("verd");

        String msg = "Hallo " + currencyShortName +" " + verd;

        model.addAttribute("halloMsg", msg);

        //return the view
        return "Map/prufaprufa";
    }
    */
}
