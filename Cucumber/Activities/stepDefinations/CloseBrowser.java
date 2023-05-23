package stepDefinations;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class CloseBrowser extends BaseClass{

    @And("close the browser")

    public void closeBrowser()
    {
        driver.quit();
    }
}
