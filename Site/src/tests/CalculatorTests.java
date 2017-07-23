package tests;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.is;

import org.junit.Before;
import org.junit.Test;

import com.sample.controller.Calculator;

public class CalculatorTests {

	Calculator house;

	@Before
	public void setUp() {
		house = new Calculator(0.0, 0.0, 0.0, 0.0, "");
	}

	@Test
	public void testGetServiceCharge() {
		assertThat(house.getServiceCharge(), is(equalTo(250.0)));
	}

	@Test(expected = IllegalArgumentException.class)
	public void testSetMinHouseSizeException() {
		house.setSquareFeet("120.0");
		assertThat(Calculator.getSquareFeet(), is(equalTo(120.0)));
		assertThat(Calculator.getSquareFootPrice(), is(equalTo(0.0)));
	}

	@Test(expected = IllegalArgumentException.class)
	public void testSetBelowMinHouseSizeException() {
		house.setSquareFeet("19.9");
		assertThat(house.getSquareFeet(), is(equalTo(19.9)));
		assertThat(house.getSquareFootPrice(), is(equalTo(0.0)));
	}

	@Test(expected = IllegalArgumentException.class)
	public void testSetMinusHouseSizeException() {
		house.setSquareFeet("-1.0");
		assertThat(house.getSquareFeet(), is(equalTo(-1.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(0.0)));
	}

	@Test
	public void testSetSmallHouseSizeCurrentPriceMin() {
		house.setSquareFeet("121.0");
		assertThat(house.getSquareFeet(), is(equalTo(121.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(15000.0)));
	}

	@Test
	public void testSetSmallHouseSizeCurrentPriceAboveMin() {
		house.setSquareFeet("121.1");
		assertThat(house.getSquareFeet(), is(equalTo(121.1)));
		assertThat(house.getSquareFootPrice(), is(equalTo(15000.0)));
	}

	@Test
	public void testSetSmallHouseSizeCurrentPriceMax() {
		house.setSquareFeet("2500.0");
		assertThat(house.getSquareFeet(), is(equalTo(2500.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(15000.0)));
	}

	@Test
	public void testSetSmallHouseSizeCurrentPriceBelowMax() {
		house.setSquareFeet("2499.9");
		assertThat(house.getSquareFeet(), is(equalTo(2499.9)));
		assertThat(house.getSquareFootPrice(), is(equalTo(15000.0)));
	}

	@Test
	public void testSetMediumHouseSizeCurrentPriceMin() {
		house.setSquareFeet("2500.1");
		assertThat(house.getSquareFeet(), is(equalTo(2500.1)));
		assertThat(house.getSquareFootPrice(), is(equalTo(20000.0)));
	}

	@Test
	public void testSetMediumHouseSizeCurrentPriceAboveMin() {
		house.setSquareFeet("2500.2");
		assertThat(house.getSquareFeet(), is(equalTo(2500.2)));
		assertThat(house.getSquareFootPrice(), is(equalTo(20000.0)));
	}

	@Test
	public void testSetMediumHouseSizeCurrentPriceMax() {
		house.setSquareFeet("3000.0");
		assertThat(house.getSquareFeet(), is(equalTo(3000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(20000.0)));
	}

	@Test
	public void testSetMediumHouseSizeCurrentPriceBelowMax() {
		house.setSquareFeet("2999.9");
		assertThat(house.getSquareFeet(), is(equalTo(2999.9)));
		assertThat(house.getSquareFootPrice(), is(equalTo(20000.0)));
	}

	@Test
	public void testSetLargeHouseSizeCurrentPriceMin() {
		Calculator.setSquareFeet("3000.1");
		assertThat(house.getSquareFeet(), is(equalTo(3000.1)));
		assertThat(house.getSquareFootPrice(), is(equalTo(25000.0)));
	}

	@Test
	public void testSetLargeHouseSizeCurrentPriceAboveMin() {
		house.setSquareFeet("3000.2");
		assertThat(house.getSquareFeet(), is(equalTo(3000.2)));
		assertThat(house.getSquareFootPrice(), is(equalTo(25000.0)));
	}

	@Test
	public void testSetLargeHouseSizeCurrentPriceMax() {
		house.setSquareFeet("4000.0");
		assertThat(house.getSquareFeet(), is(equalTo(4000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(25000.0)));
	}

	@Test
	public void testSetLargeHouseSizeCurrentPriceBelowMax() {
		house.setSquareFeet("3999.9");
		assertThat(house.getSquareFeet(), is(equalTo(3999.9)));
		assertThat(house.getSquareFootPrice(), is(equalTo(25000.0)));
	}

	@Test
	public void testSetExtraLargeHouseSizeCurrentPriceMin() {
		house.setSquareFeet("4000.1");
		assertThat(house.getSquareFeet(), is(equalTo(4000.1)));
		assertThat(house.getSquareFootPrice(), is(equalTo(30000.0)));
	}

	@Test
	public void testSetExtraLargeHouseSizeCurrentPriceAboveMin() {
		house.setSquareFeet("4000.2");
		assertThat(house.getSquareFeet(), is(equalTo(4000.2)));
		assertThat(house.getSquareFootPrice(), is(equalTo(30000.0)));
	}

	@Test
	public void testSetExtraLargeHouseSizeCurrentPriceMax() {
		house.setSquareFeet("5000.0");
		assertThat(house.getSquareFeet(), is(equalTo(5000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(30000.0)));
	}

	@Test
	public void testSetExtraLargeHouseSizeCurrentPriceBelowMax() {
		house.setSquareFeet("4999.9");
		assertThat(house.getSquareFeet(), is(equalTo(4999.9)));
		assertThat(house.getSquareFootPrice(), is(equalTo(30000.0)));
	}

	@Test
	public void testSetAboveExtraLargeHouseSizeCurrentPriceMin() {
		house.setSquareFeet("5000.1");
		assertThat(house.getSquareFeet(), is(equalTo(5000.1)));
		assertThat(house.getSquareFootPrice(), is(equalTo(35000.0)));
	}

	@Test
	public void testSetAboveExtraLargeHouseSizeCurrentPriceAboveMin() {
		house.setSquareFeet("5000.2");
		assertThat(house.getSquareFeet(), is(equalTo(5000.2)));
		assertThat(house.getSquareFootPrice(), is(equalTo(35000.0)));
	}

	@Test
	public void testSetAboveExtraLargeHouseSizeCurrentPriceMax() {
		house.setSquareFeet("6000.0");
		assertThat(house.getSquareFeet(), is(equalTo(6000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(35000.0)));
	}

	@Test
	public void testSetAboveExtraLargeHouseSizeCurrentPriceBelowMax() {
		house.setSquareFeet("7000.0");
		assertThat(house.getSquareFeet(), is(equalTo(7000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(35000.0)));
	}

	@Test
	public void testTownPriceBurt() {
		house.setTownPrice("burt");
		assertThat(house.getTown(), is(equalTo("burt")));
		house.setTownPrice("Burt");
		assertThat(house.getTown(), is(equalTo("Burt")));
		assertThat(house.getTownPrice(), is(equalTo(200000.0)));
	}

	@Test
	public void testTownPriceLetterkenny() {
		house.setTownPrice("Letterkenny");
		assertThat(house.getTown(), is(equalTo("Letterkenny")));
		house.setTownPrice("letterkenny");
		assertThat(house.getTown(), is(equalTo("letterkenny")));
		assertThat(house.getTownPrice(), is(equalTo(250000.0)));
	}

	@Test
	public void testTownPriceDonegalTown() {
		house.setTownPrice("donegal town");
		assertThat(house.getTown(), is(equalTo("donegal town")));
		house.setTownPrice("Donegal Town");
		assertThat(house.getTown(), is(equalTo("Donegal Town")));
		assertThat(house.getTownPrice(), is(equalTo(220000.00)));
	}

	@Test
	public void testTownPriceKillybegs() {
		house.setTownPrice("Killybegs");
		assertThat(house.getTown(), is(equalTo("Killybegs")));
		house.setTownPrice("killybegs");
		assertThat(house.getTown(), is(equalTo("killybegs")));
		assertThat(house.getTownPrice(), is(equalTo(212500.00)));
	}

	@Test
	public void testTownPriceBuncrana() {
		house.setTownPrice("Buncrana");
		assertThat(house.getTown(), is(equalTo("Buncrana")));
		house.setTownPrice("buncrana");
		assertThat(house.getTown(), is(equalTo("buncrana")));
		assertThat(house.getTownPrice(), is(equalTo(255500.00)));
	}

	@Test
	public void testTownPriceQuigleyPoint() {
		house.setTownPrice("Quigley's Point");
		assertThat(house.getTown(), is(equalTo("Quigley's Point")));
		house.setTownPrice("quigley's point");
		assertThat(house.getTown(), is(equalTo("quigley's point")));
		house.setTownPrice("quigleys point");
		assertThat(house.getTown(), is(equalTo("quigleys point")));
		house.setTownPrice("Quigleys Point");
		assertThat(house.getTown(), is(equalTo("Quigleys Point")));
		assertThat(house.getTownPrice(), is(equalTo(194500.00)));
	}

	@Test
	public void testTownPriceStJohnston() {
		house.setTownPrice("st. johnston");
		assertThat(house.getTown(), is(equalTo("st. johnston")));
		house.setTownPrice("St. Johnston");
		assertThat(house.getTown(), is(equalTo("St. Johnston")));
		assertThat(house.getTownPrice(), is(equalTo(205500.00)));
	}

	@Test
	public void testTownPriceBundoran() {
		house.setTownPrice("Bundoran");
		assertThat(house.getTown(), is(equalTo("Bundoran")));
		house.setTownPrice("bundoran");
		assertThat(house.getTown(), is(equalTo("bundoran")));
		assertThat(house.getTownPrice(), is(equalTo(205000.00)));
	}

	@Test
	public void testTownPriceRaphoe() {
		house.setTownPrice("Raphoe");
		assertThat(house.getTown(), is(equalTo("Raphoe")));
		assertThat(house.getTownPrice(), is(equalTo(195500.00)));
	}

	@Test(expected = IllegalArgumentException.class)
	public void testTownNumberException() {
		house.setTownPrice("burt1");
		assertThat(house.getTown(), is(equalTo("burt1")));
		assertThat(house.getTownPrice(), is(equalTo(200000.0)));
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testTownSymbolException() {
		house.setTownPrice("L€tterkenny");
		assertThat(house.getTown(), is(equalTo("L€tterkenny")));
		assertThat(house.getTownPrice(), is(equalTo(250000.0)));
	}
	
	@Test
	public void testFinalPrice1() {
		house.setSquareFeet("6000.0");
		house.setTownPrice("burt");
		assertThat(house.getTown(), is(equalTo("burt")));
		assertThat(house.getTownPrice(), is(equalTo(200000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(25000.0)));
		assertThat(house.getFinalPrice(), is(equalTo(225250.0)));
	}
	
	@Test
	public void testFinalPrice2() {
		house.setSquareFeet("2500.0");
		house.setTownPrice("Letterkenny");
		assertThat(house.getTown(), is(equalTo("Letterkenny")));
		assertThat(house.getTownPrice(), is(equalTo(250000.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(5000.0)));
		assertThat(house.getFinalPrice(), is(equalTo(255250.0)));
	}
	
	@Test
	public void testFinalPrice3() {
		house.setSquareFeet("3315.8");
		house.setTownPrice("killybegs");
		assertThat(house.getTown(), is(equalTo("killybegs")));
		assertThat(house.getTownPrice(), is(equalTo(212500.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(15000.0)));
		assertThat(house.getFinalPrice(), is(equalTo(227750.0)));
	}
	
	@Test
	public void testFinalPrice4() {
		house.setSquareFeet("7092.7");
		house.setTownPrice("Newtowncunningham");
		assertThat(house.getTown(), is(equalTo("Newtowncunningham")));
		assertThat(house.getTownPrice(), is(equalTo(195500.0)));
		assertThat(house.getSquareFootPrice(), is(equalTo(25000.0)));
		assertThat(house.getFinalPrice(), is(equalTo(220750.0)));
	}

}
