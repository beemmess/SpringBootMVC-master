package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Info.Phrases;
import project.persistence.repositories.PostitNoteRepository;
import project.service.PhrasesService;

/**
 * Created by hrabby on 4.11.2015.
 */
@Controller
public class PhrasesController {
    // Instance Variables
    PhrasesService phrasesService;

    // Dependency Injection
    @Autowired
    public PhrasesController(PhrasesService phrasesService) {this.phrasesService = phrasesService;}


    @RequestMapping(value = "/phrases", method = RequestMethod.GET)
    public String phrasesViewGet(Model model) {
        model.addAttribute("phrases", new Phrases());

        model.addAttribute("phrase", phrasesService.findAllReverseOrder());

        //return the view
        return "Info/phrases";
    }


    @RequestMapping(value = "/phrases", method = RequestMethod.POST)
    public String phrasesViewPost(@ModelAttribute("phrases") Phrases phrases, Model model) {
        phrasesService.save(phrases);

        model.addAttribute("phrase", phrasesService.findAllReverseOrder());

        model.addAttribute("phrases", new Phrases());

        return "Info/phrases";
    }

}
