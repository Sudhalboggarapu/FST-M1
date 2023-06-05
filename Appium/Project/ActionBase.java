package liveproject;

import io.appium.java_client.AppiumDriver;
import org.openqa.selenium.Point;
import org.openqa.selenium.interactions.PointerInput;
import org.openqa.selenium.interactions.Sequence;
import static org.openqa.selenium.interactions.PointerInput.MouseButton.LEFT;


import java.time.Duration;
import java.util.Arrays;

import static org.openqa.selenium.interactions.PointerInput.Origin.viewport;

public class ActionBase {
    //Create pointer input object
    private  static final PointerInput finger= new PointerInput(PointerInput.Kind,"finger");
    public static  void doSwipe(AppiumDriver driver, Point Start , Point End, int duration_)
    {
        Sequence swipe= ((new Sequence(finger, 1).
                addAction(finger.createPointerMove(Duration.ofMillis(duration_), viewport(), Start.getX(), (Start.getY())))).
                addAction(finger.createPointerDown(LEFT.asArg())).
                addAction(finger.createPointerMove(Duration.ofMillis(duration_), viewport(), End.getX(), (End.getY()))).
                addAction(finger.createPointerUp(LEFT.asArg())));
        driver.perform(Arrays.asList(swipe));

    }
}
