package project.persistence.entities.Forecast;

import org.json.JSONException;
import project.persistence.entities.Data.GetData;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;


/**
 * Created by audurgudjons on 20/11/15.
 */
public class Weather {

        private Date fTime;
        private int windSpeed;
        private String windDirection;
        private int airTemperature;
        private String weatherDescription;
        private int cloudCover;

        public Weather() {}


        public Weather(Date timi, int vindHradi, String vindStefna, int loftHiti, String vedurLysing, int skyjahula){
            fTime = timi;
            windSpeed = vindHradi;
            windDirection = vindStefna;
            airTemperature = loftHiti;
            weatherDescription = vedurLysing;
            cloudCover = skyjahula;
        }

        public Date getFtime() { return fTime; }
        public int getWindSpeed() { return windSpeed; }
        public String getWindDirection() { return windDirection; }
        public int getAirTemperature() { return airTemperature; }
        public String getWeatherDescription() { return weatherDescription; }
        public int getCloudCover() { return cloudCover; }

        public void setFtime(Date timi) { fTime = timi;}
        public void setWindSpeed(int vindHradi) { windSpeed = vindHradi; }
        public void setWindDirection(String vindStefna) { windDirection = vindStefna;}
        public void setAirTemperature(int loftHiti) { airTemperature = loftHiti;}
        public void setWeatherDescription(String vedurLysing) { weatherDescription = vedurLysing; }
        public void setCloudCover(int skyjahula) { cloudCover = skyjahula;}



    public static ArrayList<Weather> getWeatherEvents() throws ParseException, IOException, JSONException {
        String a = "weather";
        GetData data = new GetData(a);
        Weather [] weatherForecast = data.createWeather();

        ArrayList<Weather> weatherForecastList = new ArrayList<Weather>(Arrays.asList(weatherForecast));

        return weatherForecastList;
    }

    public static void main (String args[]) throws ParseException, JSONException, IOException {
        ArrayList<Weather> weatherForecast = getWeatherEvents();
        for(int i=0; i<weatherForecast.size(); i++) {
            System.out.println(weatherForecast.get(i).getFtime());
            System.out.println(weatherForecast.get(i).getWindSpeed());
            System.out.println(weatherForecast.get(i).getWindDirection());
            System.out.println(weatherForecast.get(i).getAirTemperature());
            System.out.println(weatherForecast.get(i).getWeatherDescription());
            System.out.println(weatherForecast.get(i).getCloudCover());
        }
    }

}
