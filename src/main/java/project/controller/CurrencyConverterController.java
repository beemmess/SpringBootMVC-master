package project.controller;

import org.json.JSONException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Info.CurrencyConverter.Currency;
import project.service.CurrencyConverterService;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

import static project.service.CurrencyConverterService.*;

/**
 * Created by hrabby on 5.11.2015.
 */
@Controller
public class CurrencyConverterController {

    //Instance variable
    private CurrencyConverterService currencyConverterService;

   //@Autowired
    //public CurrencyConverterController(CurrencyConverterService currencyConverterService) {
    //    this.currencyConverterService = currencyConverterService;
    //}
    

    @RequestMapping(value="/currency", method = RequestMethod.GET)
    public  String BLaa(Model model) {

        //model.addAttribute("currencyConverter", new CurrencyConverter());
        return "User/currencyConverter";
    }


    @RequestMapping(value="/currency", method = RequestMethod.POST)
    public String hallo( @ModelAttribute("currencyConverter") CurrencyConverter currencyConverter, Model model) throws ParseException, JSONException, IOException {

        CurrencyConverterService currencyConverterService = new CurrencyConverterService(currencyConverter);
        //currencyConverterService.convert();
        currencyConverterService.findValue(currencyConverter);
        currencyConverterService.calculateCurrency(currencyConverter);



        //String msg = "Hallo  blalbal ";
        //model.addAttribute("halloMsg", msg);

        //return the view
        return "User/converter";
    }



}
