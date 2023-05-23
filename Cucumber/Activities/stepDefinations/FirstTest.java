package stepDefinations;

import io.cucumber.java.BeforeAll;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import  io.cucumber.java.en.When;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.devtools.v85.backgroundservice.BackgroundService;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static org.junit.Assert.*;

public class FirstTest extends BaseClass {
    @BeforeAll
    public static void setUp(){
        WebDriverManager.firefoxdriver().setup();
        driver=new FirefoxDriver();
        wait=new WebDriverWait(driver, Duration.ofSeconds(10));
    }
    @Given("user is on the TS Homepage")
    public  void openPage() {
        driver.get("https://www.training-support.net");
        //Assertion
        assertEquals("Training Support", driver.getTitle());
    }
        @When("they click the About Us Link")
        public void  clickAboutUsLink()
        {
            driver.findElement(By.id("about-link")).click();
        }
        @Then("they are redirected to the About US page")
         public void  redirectAboutus() {

        assertEquals("About Training Support", driver.getTitle());
        }

}
