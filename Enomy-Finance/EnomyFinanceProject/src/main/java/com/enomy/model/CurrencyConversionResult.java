package com.enomy.model;

public class CurrencyConversionResult {

    private double amount;
    private String sourceCurrency;
    private double convertedAmount;
    private String targetCurrency;
    private double fee;
    private double totalBalance; 
    
    public CurrencyConversionResult(double amount, String sourceCurrency, double convertedAmount, String targetCurrency, double fee, double totalBalance) {
        this.amount = amount;
        this.sourceCurrency = sourceCurrency;
        this.convertedAmount = convertedAmount;
        this.targetCurrency = targetCurrency;
        this.fee = fee;
        this.totalBalance = totalBalance;
    }

	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getSourceCurrency() {
		return sourceCurrency;
	}
	public void setSourceCurrency(String sourceCurrency) {
		this.sourceCurrency = sourceCurrency;
	}
	public double getConvertedAmount() {
		return convertedAmount;
	}
	public void setConvertedAmount(double convertedAmount) {
		this.convertedAmount = convertedAmount;
	}
	public String getTargetCurrency() {
		return targetCurrency;
	}
	public void setTargetCurrency(String targetCurrency) {
		this.targetCurrency = targetCurrency;
	}
	public double getFee() {
		return fee;
	}
	public void setFee(double fee) {
		this.fee = fee;
	}
    public double getTotalBalance() {
        return totalBalance;
    }

    public void setTotalBalance(double totalBalance) {
        this.totalBalance = totalBalance;
    }

    // Constructors, getters, and setters
}

