package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Info.Phrases;
import project.persistence.entities.Info.UsefulPhoneNumbers;
import project.service.PhrasesService;
import project.service.UsefulPhoneNumbersService;


/**
 * Created by hrabby on 4.11.2015.
 */
@Controller
public class PhrasesController {

    // Instance Variables
    PhrasesService phrasesService;
    UsefulPhoneNumbersService usefulPhoneNumbersService;

    // Dependency Injection
    @Autowired
    public PhrasesController(PhrasesService phrasesService, UsefulPhoneNumbersService usefulPhoneNumbersService) {
        this.phrasesService = phrasesService;
        this.usefulPhoneNumbersService = usefulPhoneNumbersService;
    }

    @RequestMapping(value = "/info")
    public String info(Model model) {
        String texti = "Select type of information";
        model.addAttribute("text", texti);

        return "Info/info";
    }

    @RequestMapping(value = "/phrases", method = RequestMethod.GET)
    public String phrasesViewGet(Model model) {
        model.addAttribute("phrases", new Phrases());

        model.addAttribute("phrase", phrasesService.findAllReverseOrder());

        //return the view
        return "Info/phrases";
    }

/* þurfum ekki post því við erum ekki að taka inn neinar upplýsingar frá notendum
    @RequestMapping(value = "/phrases", method = RequestMethod.POST)
    public String phrasesViewPost(@ModelAttribute("phrases") Phrases phrases, Model model) {
        phrasesService.save(phrases);

        model.addAttribute("phrase", phrasesService.findAllReverseOrder());

        model.addAttribute("phrases", new Phrases());

        return "Info/phrases";
    }
    */

    @RequestMapping(value = "/usefulphonenumbers", method = RequestMethod.GET)
    public String usefulPhoneNumbersViewGet(Model model) {
        model.addAttribute("usefulphonenumbers", new UsefulPhoneNumbers());

        model.addAttribute("usefulphonenumber", usefulPhoneNumbersService.findAllReverseOrder());

        //return the view
        return "Info/usefulPhoneNumbers";
    }

/*  þurfum ekki post því við erum ekki að taka inn neinar upplýsingar frá notendum
    @RequestMapping(value = "/usefulphonenumbers", method = RequestMethod.POST)
    public String usefulPhoneNumbersViewPost(@ModelAttribute("usefulphonenumbers") UsefulPhoneNumbers usefulPhoneNumbers, Model model) {
        usefulPhoneNumbersService.save(usefulPhoneNumbers);

        model.addAttribute("usefulphonenumber", usefulPhoneNumbersService.findAllReverseOrder());

        model.addAttribute("usefulphonenumbers", new UsefulPhoneNumbers());

        return "Info/usefulPhoneNumbers";
    }
    */

}
