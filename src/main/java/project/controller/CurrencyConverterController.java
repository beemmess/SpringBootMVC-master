package project.controller;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Info.CurrencyConverter.Currency;
import project.service.CurrencyConverterService;

import java.io.IOException;
import java.text.ParseException;


/**
 * Created by hrabby on 5.11.2015.
 */
@Controller
public class CurrencyConverterController {


    @RequestMapping(value="/currency", method = RequestMethod.GET)
    public  String getCurrencyConverterView() {

        return "Info/currencyConverter";
    }


    @RequestMapping(value="/currency", method = RequestMethod.POST)
    public String calculateCurrency( @ModelAttribute("currencyConverter") CurrencyConverter currencyConverter) throws ParseException, JSONException, IOException {

        CurrencyConverterService currencyConverterService = new CurrencyConverterService(currencyConverter);
        currencyConverterService.findValue(currencyConverter);
        currencyConverterService.calculateCurrency(currencyConverter);


        //return the view
        return "Info/converter";
    }



}
