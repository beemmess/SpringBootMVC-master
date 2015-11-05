package project.persistence.entities.Info;

import org.json.JSONException;
import project.persistence.entities.Data.GetData;

import javax.persistence.Entity;
import java.io.IOException;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by hrabby on 4.11.2015.
 */
@Entity
public class CurrencyConverter {


    private Currency currencyShortName;
    private double value;

    private int iskValue;


    private double foreignValue;

    public enum Currency {
        ISK, USD, GBP, EUR, CAD, DKK, NOK, SEK, CHF, JPY, XDR
    }



    public CurrencyConverter() {
    }

    public CurrencyConverter(Currency currencyShortName, double value, double foreignValue){
        this.currencyShortName = currencyShortName;
        this.value = value;

        //inputValue
        //this.iskValue = iskValue;

        this.foreignValue = 1000/this.value;


    }

    public Currency getCurrencyShortName() {return currencyShortName;}
    public void setCurrencyShortName(Currency currencyShortName) {this.currencyShortName = currencyShortName;}

    public int getIskValue() {return iskValue;}
    public void setIskValue(int iskValue) {this.iskValue = iskValue;}

    public double getValue() {return value;}
    public void setValue(double value) {this.value = value;}

    public double getForeignValue() {return foreignValue;}
    public void  setForeignValue(double foreignValue) { this.foreignValue = foreignValue;}




    public static ArrayList<CurrencyConverter> getCurrencyConverters()throws ParseException, IOException, JSONException {
        String a = "currency";
        GetData data = new GetData(a);
        CurrencyConverter[] currencyConverters = data.createCurrencyConverter();

        ArrayList<CurrencyConverter> currencyList = new ArrayList<CurrencyConverter>(Arrays.asList(currencyConverters));

        return currencyList;
    }

    public static void main (String args[]) throws ParseException, JSONException, IOException {
        ArrayList<CurrencyConverter> currencyConverters = getCurrencyConverters();
        for(int i = 0; i < currencyConverters.size(); i++){
            System.out.println(currencyConverters.get(i).getCurrencyShortName());
            //System.out.println(currencyConverters.get(i).getValue());
            //System.out.println(currencyConverters.get(i).getForeignValue());
        }
    }

}




