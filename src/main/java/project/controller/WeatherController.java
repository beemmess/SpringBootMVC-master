package project.controller;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.Events.Cinema;
import project.persistence.entities.Forecast.Weather;
import project.service.WeatherService;

import java.io.IOException;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 * Created by audurgudjons on 22/11/15.
 */

@Controller
public class WeatherController {

    @RequestMapping(value="/weather", method = RequestMethod.GET)
    public String weather(Model model) throws ParseException, JSONException, IOException {
        String texti = "Weather forecast :";
        model.addAttribute("text",texti);

        ArrayList<Weather> vedurspa = WeatherService.getweatherForecast();
        model.addAttribute("vedur", vedurspa);

        return "Forecast/weather";
    }
}
