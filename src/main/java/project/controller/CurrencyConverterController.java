package project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Info.CurrencyConverter.Currency;




/**
 * Created by hrabby on 5.11.2015.
 */
@Controller
public class CurrencyConverterController {

    @ModelAttribute("currencies")
    public Currency[] currencies() {
        return Currency.values();
    }

    @RequestMapping(value = "/currency", method = RequestMethod.GET)
    public String loadfrompage(Model model) {
        model.addAttribute("currencyConverter", new CurrencyConverter());
        return "User/currencyConverter";
    }

    //@RequestMapping(value = "form", method = RequestMethod.POST)
    //public String submitform(@ModelAttribute CurrencyConverter currencyConverter, Model model){
    //    model.addAttribute("")
    //}

}
