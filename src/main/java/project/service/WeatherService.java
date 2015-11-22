package project.service;

import org.json.JSONException;
import project.persistence.entities.Data.GetData;
import project.persistence.entities.Forecast.Weather;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by audurgudjons on 20/11/15.
 */
public class WeatherService {

    private Weather weatherForecast;

    public WeatherService(Weather weatherForecast){
        this.weatherForecast = weatherForecast;
    }

    public ArrayList<Weather> getweatherForecast()throws ParseException, IOException, JSONException {
        String a = "weather";
        GetData data = new GetData(a);
        Weather[] weatherForecast = data.createWeather();

        ArrayList<Weather> weatherList = new ArrayList<Weather>(Arrays.asList(weatherForecast));

        return weatherList;
    }
}
