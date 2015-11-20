package project.persistence.entities.Data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Forecast.Weather;

import java.io.*;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.ParseException;

/**
 * Created by bjarkimar23 on 28.10.2015.
 */
public class GetData {
    private String dataType;

    public GetData(String dataType) {this.dataType = dataType;}


    //reads data and returns as a string
    private static String readAll(Reader rd) throws IOException {
        StringBuilder sb = new StringBuilder();
        int cp;
        while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
        }
        return sb.toString();
    }


    //reads from url
    public static JSONObject readData(String typeOfData) throws IOException, JSONException {
        InputStream is = new URL("http://apis.is/"+typeOfData).openStream();
        try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            JSONObject json = new JSONObject(jsonText);
            return json;
        } finally {
            is.close();
        }
    }


    public CurrencyConverter[] createCurrencyConverter()throws JSONException, ParseException, IOException {
        JSONObject currency = readData("currency");
        JSONArray result = currency.getJSONArray("results");


        CurrencyConverter[] currencyConverters = new CurrencyConverter[result.length()];
        for(int i = 0; i < result.length(); i++){
            JSONObject converter = result.getJSONObject(i);

            String shortName  = converter.getString("shortName");
            double value = converter.getDouble("value");

            //int iskValue = 1;
            //double foreignValue = iskValue/value;


            currencyConverters[i] = new CurrencyConverter();
            currencyConverters[i].setCurrencyShortName(CurrencyConverter.Currency.valueOf(shortName));
            currencyConverters[i].setValue(value);
//            currencyConverters[i].setForeignValue(foreignValue);
  //          currencyConverters[i].setIskValue(iskValue);
        }
        return currencyConverters;
    }

    public Weather [] createWeather()throws JSONException, ParseException, IOException {
        JSONObject weather = readData("weather");
        JSONObject forecasts = readData("forecasts");
        JSONArray result = weather.getJSONArray("results");


        Weather[] weatherForecast = new Weather[result.length()];
        for(int i = 0; i < result.length(); i++){
            JSONObject vedur = result.getJSONObject(i);

            /*String ftime = vedur.getString("ftime");
            String dateStr = changeFromIslDate(ftime);
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("ddMMyyyy");
            LocalDate ftime = LocalDate.parse(dateStr, formatter);
            Date ftime  = vedur.getDate("ftime"); */
            int F = vedur.getInt("F");
            String D = vedur.getString("D");
            int T = vedur.getInt("T");
            String W = vedur.getString("W");
            int N = vedur.getInt("N");

            weatherForecast[i] = new Weather();
            //weatherForecast[i].setFTime(ftime);
            weatherForecast[i].setWindSpeed(F);
            weatherForecast[i].setWindDirection(D);
            weatherForecast[i].setAirTemperature(T);
            weatherForecast[i].setWeatherDescription(W);
            weatherForecast[i].setCloudCover(N);

        }
        return weatherForecast;
    }

}
