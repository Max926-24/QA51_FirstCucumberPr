package com.ilCarro.stepDefinitions;

import com.ilcarro.pages.HomePage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static com.ilcarro.pages.BasePage.driver;

public class HomePageSteps {

    @Given("User launches Chrome browser")
    public void launch_browser() {
        new HomePage(driver).launchBrowser();
    }

    @When("User opens Home Page")
    public void open_HomePage() {
        new HomePage(driver).openURL();
    }

    @Then("User verifies Home Page title is displayed")
    public void verify_HomePage_title() {
        new HomePage(driver).isHomePageTitleDisplayed();
    }

    @And("User quites browser")
    public void quit_browser() {
        new HomePage(driver).quitBrowser();
    }
}
