package project.service;

import org.json.JSONException;
import project.persistence.entities.Data.GetData;
import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Info.CurrencyConverter.Currency;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by hrabby on 16.11.2015.
 */
public class CurrencyConverterService {

    private CurrencyConverter currencyConverter;


    public CurrencyConverterService(CurrencyConverter currenyConverter) {
        this.currencyConverter = currencyConverter;
    }


    public ArrayList<CurrencyConverter> getCurrencyConverters()throws ParseException, IOException, JSONException {
        String a = "currency";
        GetData data = new GetData(a);
        CurrencyConverter[] currencyConverters = data.createCurrencyConverter();

        ArrayList<CurrencyConverter> currencyList = new ArrayList<CurrencyConverter>(Arrays.asList(currencyConverters));

        return currencyList;
    }


    public Object[] convert()throws ParseException, IOException, JSONException {
        CurrencyConverter currencyConverter = new CurrencyConverter();

        ArrayList<CurrencyConverter> currencyConverters = getCurrencyConverters();
        Object[] finalConverter = new Object[currencyConverters.size()];
        CurrencyConverter.Currency[] currencyValues = CurrencyConverter.Currency.values();
        double iskvalue = inputIskValue(currencyConverter);


        for(int i = 0; i < currencyConverters.size(); i++) {
            //double foreignValue = currencyConverters.get(i).getIskValue()/currencyConverters.get(i).getValue();
            //currencyConverter.setForeignValue(foreignValue);
            currencyConverter.setValue(currencyConverters.get(i).getValue());
            CurrencyConverter.Currency shortName =  currencyValues[i];
            currencyConverter.setCurrencyShortName(shortName);

            CurrencyConverter.Currency currencyShortName = currencyConverter.getCurrencyShortName();
            double value = currencyConverter.getValue();
            double foreignValue = calculateCurrency(currencyConverter);
            finalConverter[i] = new Object[] { currencyShortName ,value , iskvalue, foreignValue};
        }
        return finalConverter;
    }


    public double findValue(CurrencyConverter currencyConverter) throws ParseException, JSONException, IOException {
        ArrayList<CurrencyConverter> currencyConverters = getCurrencyConverters();

        double value = 1;
        for(int i = 0; i < currencyConverters.size(); i++){
            if(currencyConverter.getCurrencyShortName() == Currency.values()[i]){

                value = currencyConverters.get(i).getValue();
                currencyConverter.setValue(value);
                System.out.println(value);

            }

        }

        return value;
    }


    public Object selectCurrency(Object[] finalConverter){
        Object currencyShortName = finalConverter[0];
        return currencyShortName;

    }

    public double calculateCurrency(CurrencyConverter currencyConverter) {
        double iskValue = currencyConverter.getIskValue();
        double value = currencyConverter.getValue();

        double foreignValue = iskValue/value;
        currencyConverter.setForeignValue(foreignValue);

        return currencyConverter.getForeignValue();
    }


    public double inputIskValue(CurrencyConverter currencyConverter){

        return currencyConverter.getIskValue();
    }

}
