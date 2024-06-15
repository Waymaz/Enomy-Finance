package com.enomy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enomy.model.CurrencyConversion;
import com.enomy.model.CurrencyConversionResult;
import com.enomy.repository.CurrencyConversionRepository;

@Service
public class CurrencyConversionService {

    @Autowired
    private CurrencyConversionRepository conversionRepository;

    public CurrencyConversionResult convertCurrency(Long userId, double amount, String sourceCurrency, String targetCurrency) {
        // Assuming you have a method to get static conversion rates
        double conversionRate = getConversionRate(sourceCurrency, targetCurrency);

        // Calculate converted amount without fee
        double convertedAmount = amount * conversionRate;

        // Calculate fee based on the rules you provided
        double fee = calculateFee(convertedAmount, targetCurrency);

        // Calculate total balance
        double totalBalance = convertedAmount - fee;

        // Create a CurrencyConversion object and save it to the database
        CurrencyConversion currencyConversion = new CurrencyConversion();
        currencyConversion.setUserId(userId);
        currencyConversion.setAmount(amount);
        currencyConversion.setSourceCurrency(sourceCurrency);
        currencyConversion.setConvertedAmount(convertedAmount);
        currencyConversion.setTargetCurrency(targetCurrency);
        currencyConversion.setFee(fee);
        currencyConversion.setTotalBalance(totalBalance);

        conversionRepository.save(currencyConversion);

        // Create a CurrencyConversionResult object and return it
        return new CurrencyConversionResult(amount, sourceCurrency, convertedAmount, targetCurrency, fee, totalBalance);
    }

    private double getConversionRate(String sourceCurrency, String targetCurrency) {
        // Implement your logic to get static conversion rates
        // For simplicity, assuming a static conversion rate for this example
        // Add logic to handle conversion between different currencies
        return convertCurrencyStatic(sourceCurrency, targetCurrency);
    }

    private double calculateFee(double convertedAmount, String targetCurrency) {
        // Implement your logic to calculate the fee based on the rules provided
        // For simplicity, using a fixed fee for this example
        double feePercentage;
        if (convertedAmount <= 500) {
            feePercentage = 0.035;
        } else if (convertedAmount <= 1500) {
            feePercentage = 0.027;
        } else if (convertedAmount <= 2500) {
            feePercentage = 0.02;
        } else {
            feePercentage = 0.015;
        }

        // Calculate fee in target currency
        return convertedAmount * feePercentage;
    }

    // Static conversion rates between currencies
    private double convertCurrencyStatic(String sourceCurrency, String targetCurrency) {
        // Add logic to handle conversion between different currencies
        // For simplicity, using static conversion rates
        // Feel free to replace these values with accurate conversion rates
        switch (sourceCurrency) {
            case "USD":
                return convertFromUSD(targetCurrency);
            case "EUR":
                return convertFromEUR(targetCurrency);
            // Add cases for other source currencies
            case "JPY":
                return convertFromJPY(targetCurrency);
            case "BRL":
                return convertFromBRL(targetCurrency);
            case "GBP":
                return convertFromGBP(targetCurrency);
            case "TRY":
                return convertFromTRY(targetCurrency);
            default:
                // Handle unknown source currency
                return 1.0;
        }
    }

    // Example conversion rates
    private double convertFromUSD(String targetCurrency) {
        switch (targetCurrency) {
            case "EUR":
                return 0.85; // USD to EUR
            case "JPY":
                return 110.0; // USD to JPY
            case "BRL":
                return 5.0; // USD to BRL
            case "GBP":
                return 0.73; // USD to GBP
            case "TRY":
                return 11.0; // USD to TRY
            // Add cases for other target currencies
            default:
                // Handle unknown target currency
                return 1.0;
        }
    }

    private double convertFromEUR(String targetCurrency) {
        switch (targetCurrency) {
            case "USD":
                return 1.18; // EUR to USD
            case "JPY":
                return 130.0; // EUR to JPY
            case "BRL":
                return 6.5; // EUR to BRL
            case "GBP":
                return 0.85; // EUR to GBP
            case "TRY":
                return 10.0; // EUR to TRY
            // Add cases for other target currencies
            default:
                // Handle unknown target currency
                return 1.0;
        }
    }

    // Example conversion rates from JPY
    private double convertFromJPY(String targetCurrency) {
        switch (targetCurrency) {
            case "USD":
                return 0.0091; // JPY to USD
            case "EUR":
                return 0.0077; // JPY to EUR
            case "BRL":
                return 0.05; // JPY to BRL
            case "GBP":
                return 0.0067; // JPY to GBP
            case "TRY":
                return 0.081; // JPY to TRY
            // Add cases for other target currencies
            default:
                // Handle unknown target currency
                return 1.0;
        }
    }

    // Example conversion rates from BRL
    private double convertFromBRL(String targetCurrency) {
        switch (targetCurrency) {
            case "USD":
                return 0.2; // BRL to USD
            case "EUR":
                return 0.15; // BRL to EUR
            case "JPY":
                return 20.0; // BRL to JPY
            case "GBP":
                return 0.13; // BRL to GBP
            case "TRY":
                return 1.5; // BRL to TRY
            // Add cases for other target currencies
            default:
                // Handle unknown target currency
                return 1.0;
        }
    }

    // Example conversion rates from GBP
    private double convertFromGBP(String targetCurrency) {
        switch (targetCurrency) {
            case "USD":
                return 1.38; // GBP to USD
            case "EUR":
                return 1.18; // GBP to EUR
            case "JPY":
                return 150.0; // GBP to JPY
            case "BRL":
                return 7.7; // GBP to BRL
            case "TRY":
                return 12.0; // GBP to TRY
            // Add cases for other target currencies
            default:
                // Handle unknown target currency
                return 1.0;
        }
    }

    // Example conversion rates from TRY
    private double convertFromTRY(String targetCurrency) {
        switch (targetCurrency) {
            case "USD":
                return 0.091; // TRY to USD
            case "EUR":
                return 0.10; // TRY to EUR
            case "JPY":
                return 12.0; // TRY to JPY
            case "BRL":
                return 0.67; // TRY to BRL
            case "GBP":
                return 0.083; // TRY to GBP
            // Add cases for other target currencies
            default:
                // Handle unknown target currency
                return 1.0;
        }
    }
}
