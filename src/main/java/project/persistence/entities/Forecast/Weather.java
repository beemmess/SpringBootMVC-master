package project.persistence.entities.Forecast;

import java.util.Date;

/**
 * Created by audurgudjons on 20/11/15.
 */
public class Weather {

        private Date ftime;
        private int windSpeed;
        private char windDirection;
        private int airTemperature;
        private String weatherDescription;
        private int cloudCover;


        public Weather(Date timi, int vindHradi, char vindStefna, int loftHiti, String vedurLysing, int sky){
            ftime = timi;
            windSpeed = vindHradi;
            windDirection = vindStefna;
            airTemperature = loftHiti;
            weatherDescription = vedurLysing;
            cloudCover = sky;
        }

        public Date getFtime() { return ftime; }
        public int getWindSpeed() { return windSpeed; }
        public char getWindDirection() { return windDirection; }
        public int getAirTemperature() { return airTemperature; }
        public String getWeatherDescription() { return weatherDescription; }
        public int getCloudCover() { return cloudCover; }

        public void setFtime(Date timi) { ftime = timi;}
        public void setWindSpeed(int vindHradi) { windSpeed = vindHradi; }
        public void setWindDirection(char vindStefna) { windDirection = vindStefna;}
        public void setAirTemperature(int loftHiti) { airTemperature = loftHiti;}
        public void setWeatherDescription(String vedurLysing) { weatherDescription = vedurLysing; }
        public void setCloudCover(int sky) { cloudCover = sky;}
    }

}
