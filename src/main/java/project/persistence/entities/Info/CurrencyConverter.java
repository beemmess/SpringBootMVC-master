package project.persistence.entities.Info;

/**
 * Created by hrabby on 4.11.2015.
 */
//@Entity
public class CurrencyConverter {


    private Currency currencyShortName;
    private double value;

    private double iskValue=1.0;


    private double foreignValue;

    public enum Currency {
        ISK, USD, GBP, EUR, CAD, DKK, NOK, SEK, CHF, JPY, XDR
    }



    public CurrencyConverter() {
    }

    public CurrencyConverter(Currency currencyShortName, double value, double iskValue, double foreignValue){
        this.currencyShortName = currencyShortName;
        this.value = value;

        //inputValue
        this.iskValue = iskValue;

        this.foreignValue = iskValue/value;


    }

    public Currency getCurrencyShortName() {return currencyShortName;}
    public void setCurrencyShortName(Currency currencyShortName) {this.currencyShortName = currencyShortName;}

    public double getIskValue() {return iskValue;}
    public void setIskValue(double iskValue) {this.iskValue = iskValue;}

    public double getValue() {return value;}
    public void setValue(double value) {this.value = value;}

    public double getForeignValue() {return foreignValue;}
    public void  setForeignValue(double foreignValue) { this.foreignValue = foreignValue;}


}




