package stepDefinations;

import io.cucumber.java.BeforeAll;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;


    public class GoogleSearchStepsTest extends BaseClass  {
        @BeforeAll
        public static void setUp(){
            WebDriverManager.firefoxdriver().setup();
            driver=new FirefoxDriver();
            wait=new WebDriverWait(driver, Duration.ofSeconds(10));
        }
        @Given("User is on Google Home Page")
        public  void googlePage() {

            driver.get("https://www.google.com");
            System.out.println("Title :"+driver.getTitle());

            Assert.assertEquals(driver.getTitle(), "Google");

        }
        @When("User types in Cheese and hits ENTER")
        public void userTypesInCheeseAndHitsENTER() throws Throwable {
            driver.findElement(By.name("q")).sendKeys("Cheese", Keys.RETURN);
        }

        @Then("^Show how many search results were shown$")
        public void showHowManySearchResultsWereShown() throws Throwable {
            wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(By.id("result-stats")));
            String resultStats = driver.findElement(By.id("result-stats")).getText();
            System.out.println("Number of results found: " + resultStats);
        }




}
