package testRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


    @RunWith(Cucumber.class)
    @CucumberOptions(
            features ="src/test/java/Features",
            glue = {"stepDefinations"},
            tags = "@activity3",
            //plugin = {"html: test-reports"},
            plugin = {"pretty"},
            monochrome = true
    )
    public class TestRunner {
        //empty
    }

