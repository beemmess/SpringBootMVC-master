package project.service;

import project.persistence.entities.Info.CurrencyConverter;
import project.persistence.entities.Info.CurrencyConverter.Currency;

import java.util.List;

/**
 * Created by hrabby on 9.11.2015.
 */
public interface CurrencyConverterService {


    /**
     * Find all {@link CurrencyConverter} with {@link Currency currencyShortName}
     * @param currencyShortName {@link Currency}
     * @return All {@link CurrencyConverter} with the {@link Currency currencyShortName} passed
     */
    List<CurrencyConverter> findByShortName(Currency currencyShortName);


    /**
     * Find a {@link CurrencyConverter} based in {@link Currency currencyShortName}
     * @param currencyShortName {@link Currency}
     * @return A {@link CurrencyConverter} with {@link Currency currencyShortName}
     */
    CurrencyConverter findOne(Currency currencyShortName);
}
