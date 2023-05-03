package GirTestAssured;

import io.restassured.builder.RequestSpecBuilder;
import io.restassured.builder.ResponseSpecBuilder;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import io.restassured.specification.ResponseSpecification;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.util.HashMap;
import java.util.Map;

import static io.restassured.RestAssured.given;
import static io.restassured.RestAssured.oauth2;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.lessThan;

public class Activity_GitHub_RestAssured {

    RequestSpecification requestSpec;
    ResponseSpecification responseSpec;
    int id = 0;



    @BeforeClass
    public void setUp() {
        requestSpec = new RequestSpecBuilder().
                setBaseUri("https://api.github.com/user/keys").addHeader("Content-Type", "application/json").
        setAuth(oauth2("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"))
                .build();
        responseSpec = new ResponseSpecBuilder().
                expectResponseTime(lessThan(5000L)).build();

    }


    @Test(priority = 1)
    public void postRequestTest() {
        Map<String, Object> reqBody = new HashMap<>();
        reqBody.put("title", "TestAPIKey");
        reqBody.put("key", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBBk5C3ntthhClGFOk8hz/Pi2wQ+FuPHBL6ppQFqfl72");

        Response response = given().spec(requestSpec).body(reqBody).when().post();
        System.out.println(response.getBody().asString());
        id = response.then().extract().path("id");
        response.then().log().all().spec(responseSpec).statusCode(201);
        response.then().spec(responseSpec).body("title", equalTo("TestAPIKey"));
    }
    @Test(priority = 2)
    public void getRequestTest() {
        given().spec(requestSpec).pathParam("keyid", id).log().all().when().get("/{keyid}")
                .then().spec(responseSpec).statusCode(200).body("title", equalTo("TestAPIKey"));
    }

    @Test(priority = 3)
    public void deleteRequestTest() {
        given().spec(requestSpec).pathParam("keyid", id).when().delete("/{keyid}")
                .then().spec(responseSpec).statusCode(204);
    }
}


