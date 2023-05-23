package activites;


import java.util.ArrayList;

public class Activity9 {
    public static void main(String[] args) {
        ArrayList<String> myList = new ArrayList<String>();
        myList.add("Bhuvanth");
        myList.add("RIshi");
        myList.add("Jhon");
        myList.add("Karthika");
        myList.add("Noor");
        System.out.println("size of  list" + myList.size());
        System.out.println("size of  list" + myList);
     myList.add("Shekar");
        System.out.println("size of  list" + myList.size());
        System.out.println("size of  list" + myList);
     myList.remove("Noor");
        System.out.println("size of  list" + myList.size());
        System.out.println("size of  list" + myList);

        System.out.println("Do we have noor"+myList.contains("Noor"));

    }


}


