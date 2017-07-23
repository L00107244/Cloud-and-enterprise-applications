package com.sample.controller;

/**
 * The Calculator.java program is for calculating the price of the house based
 * on location and square feet.
 * 
 * @author Eugene Robb
 * @author L00094131@student.lyit.ie
 * @version 1.0
 * @since 06/04/17
 */
public class Calculator {

	private static double servicePrice = 250.0;
	private static double squareFootPrice;
	private static double townPrice;
	private static double finalPrice;
	private static double houseSize;
	private static String town;
	private static String userInput;

	/**
	 * @param sFP
	 *            The square foot price
	 * @param fP
	 *            The final price
	 * @param tP
	 *            The town price
	 * @param hS
	 *            The house size
	 * @param t
	 *            The town name
	 */
	public Calculator(double sFP, double tP, double fP, double hS, String t) {
		squareFootPrice = sFP;
		townPrice = tP;
		finalPrice = fP;
		houseSize = hS;
		town = t;
	}

	/**
	 * Gets the service charge.
	 * 
	 * @return A double value representing the service charge.
	 */
	public static double getServiceCharge() {
		return servicePrice;
	}

	/**
	 * Gets the square foot price of the property.
	 * 
	 * @return A double value representing the square foot price.
	 */
	public static double getSquareFootPrice() {
		return squareFootPrice;
	}

	/**
	 * Gets the square feet of the property.
	 * 
	 * @return A double value representing the square feet.
	 */
	public static double getSquareFeet() {
		return houseSize;
	}

	/**
	 * Sets the square foot price of the property.
	 * 
	 * @param price
	 *            The price of the house. 
	 */
	public static void setSquareFeet(String price)
	{
		//convert string to double
		userInput = price;
		double value = Double.parseDouble(userInput);
		houseSize = value;
		if (houseSize <= 120.0) {
			throw new IllegalArgumentException("Square feet must be reasonable.");
		}
		// Small House: min 121.0 - max 2500.0
		else if (houseSize <= 2500.0) {
			squareFootPrice = 15000.0;
		}
		// Medium House: min 2500.1 - max 3000.0
		else if (houseSize <= 3000.0) {
			squareFootPrice = 20000.0;
		}
		// Large House: min 3000.1 - max 4000.0
		else if (houseSize <= 4000.0) {
			squareFootPrice = 25000.0;
		}
		// Extra Large House: min 4000.1 - max 5000.0
		else if (houseSize <= 5000.0) {
			squareFootPrice = 30000.0;
		}
		// Anything Above: min 5000.1 - no max
		else {
			squareFootPrice = 35000.0;
		}
		
	}
	

	/**
	 * Gets the town name.
	 * 
	 * @return A String representing the property's town.
	 */
	public static String getTown() {
		return town;
	}

	/**
	 * Validates the town name using regex. This does not allow for numbers or
	 * symbols in the name.
	 * 
	 * @param town
	 *            The name of the town.
	 * @return A boolean variable which represents true or false.
	 */
	public static boolean validateTown(String town) {
		return town.matches("^\\p{L}+[\\p{L}\\p{Z}\\p{P}]{0,}");
	}

	/**
	 * Sets the town price.
	 * 
	 * @param town
	 *            A String value representing the town name.
	 */

	public static void setTownPrice(String town) {
		if (validateTown(town)) {
			if (town.contains("burt") || town.contains("Burt")) {
				townPrice = 200000.00;
			} else if (town.contains("letterkenny") || town.contains("Letterkenny")) {
				townPrice = 250000.00;
			} else if (town.contains("donegal town") || town.contains("Donegal Town")) {
				townPrice = 220000.00;
			} else if (town.contains("killybegs") || town.contains("Killybegs")) {
				townPrice = 212500.00;
			} else if (town.contains("buncrana") || town.contains("Buncrana")) {
				townPrice = 255500.00;
			} else if (town.contains("quigley's point") || town.contains("Quigley's Point") || town.contains("quigleys point")
					|| town.contains("Quigleys Point")) {
				townPrice = 194500.00;
			} else if (town.contains("st. johnston") || town.contains("St. Johnston")) {
				townPrice = 205500.00;
			} else if (town.contains("bundoran") || town.contains("Bundoran")) {
				townPrice = 205000.00;
			} else {
				townPrice = 195500.00;
			}
		}
		else {
			throw new IllegalArgumentException("Town name can only be alphabetic with apostrophe or hyphen.", null);
		}
	}

	/**
	 * Gets the town price.
	 * 
	 * @return A double value representing the town price.
	 */
	public static double getTownPrice() {
		return townPrice;
	}

	/**
	 * Gets the final price of the property.
	 * 
	 * @return A double value representing the final price.
	 */
	public static double getFinalPrice() {
		finalPrice = squareFootPrice + townPrice + servicePrice;
		return finalPrice;
	}

}
