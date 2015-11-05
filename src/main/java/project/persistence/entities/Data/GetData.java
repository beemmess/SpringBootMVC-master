package project.persistence.entities.Data;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import project.persistence.entities.Info.CurrencyConverter;

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


            double foreignValue = 1000/value;


            currencyConverters[i] = new CurrencyConverter();
            currencyConverters[i].setCurrencyShortName(shortName);
            currencyConverters[i].setValue(value);
            currencyConverters[i].setForeignValue(foreignValue);
        }
        return currencyConverters;
    }

}
