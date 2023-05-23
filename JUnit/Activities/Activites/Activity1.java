package Activites;



import java.util.ArrayList;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
public class Activity1 {

        // Test fixtures
        static ArrayList<String> list;

        // Initialize test fixtures before each test method
        @BeforeEach
        void setUp() throws Exception {
            list = new ArrayList<String>();
            list.add("hanuman"); // at index 0
            list.add("ram"); // at index 1
        }

        // Test method to test the insert operation
        @Test
        @Order(1)
        public void insertTest() {
            // Assertion for size
            assertEquals(2, list.size(), "Wrong size");
            // Add new element
            list.add(2, "sita");
            // Assert with new elements
            assertEquals(3, list.size(), "Wrong size");

            // Assert individual elements
            assertEquals("hanuman", list.get(0), "Wrong element");
            assertEquals("Ram", list.get(1), "Case Senstive");
            assertEquals("sita", list.get(2), "Wrong element");
        }

        // Test method to test the replace operation

    @Test
    @Order(1)
        public void replaceTest() {
            // Replace new element
            list.set(1, "Laxman");
        Assertions.assertAll(
            // Assert size of list
                () ->assertEquals(3, list.size(), "Wrong size replace test"),
            // Assert individual elements
                () -> assertEquals("alpha", list.get(0), "Wrong element"),
                () -> assertEquals("sita", list.get(1), "Wrong element")
        );
        }
    }

