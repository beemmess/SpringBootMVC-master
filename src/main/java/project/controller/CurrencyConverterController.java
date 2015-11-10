package project.controller;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Info.CurrencyConverter.Currency;
import project.service.CurrencyConverterService;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;


/**
 * Created by hrabby on 5.11.2015.
 */
@Controller
public class CurrencyConverterController {

    //Instance variable
   CurrencyConverterService currencyConverterService;

    //@Autowired
    //public CurrencyConverterController(CurrencyConverterService currencyConverterService) {
    //    this.currencyConverterService = currencyConverterService;
    //}

    @ModelAttribute("currencies")
    public Currency[] currencies() {
        return Currency.values();
    }

/*
    @ModelAttribute("values")
    public double[] converter()throws ParseException, IOException, JSONException {
        ArrayList<CurrencyConverter> values = CurrencyConverter.getCurrencyConverters();
        double[] finalvalue = new double[values.size()];
        for(int i = 0; i < values.size(); i++) {
            finalvalue[i] =  values.get(i).getValue();
        }
        return finalvalue;
    }
    */

    @ModelAttribute("shortNames")
    public Object[] convert()throws ParseException, IOException, JSONException {
        ArrayList<CurrencyConverter> shortNames = CurrencyConverter.getCurrencyConverters();
        Object[] finalshortnames = new Object[shortNames.size()];
        Currency[] currencyValues = Currency.values();
        for(int i = 0; i < shortNames.size(); i++) {
            finalshortnames[i] = new Object[] { currencyValues[i] , shortNames.get(i).getValue(), shortNames.get(i).getForeignValue()};

        }
        return finalshortnames;
    }

    @RequestMapping(value = "/currency", method = RequestMethod.GET)
    public String loadfrompage(Model model) {
        model.addAttribute("currencyConverter", new CurrencyConverter());

        //return the view
        return "User/currencyConverter";
    }


    @RequestMapping(value = "/currency", method = RequestMethod.POST)
    public String submitform(@ModelAttribute CurrencyConverter currencyConverter, Model model){
        model.addAttribute("value", new CurrencyConverter());

      return "User/currencyConverter";
       }


    @RequestMapping(value = "/currency/{currencyShortName}", method = RequestMethod.GET)
    public String currencyGetvalue(@PathVariable Currency currencyShortName, Model model){

       model.addAttribute("currencyConverter", currencyConverterService.findByShortName(currencyShortName));


        model.addAttribute("currencyConverter", new CurrencyConverter());

        return "User/currencyConverter";
    }

}
