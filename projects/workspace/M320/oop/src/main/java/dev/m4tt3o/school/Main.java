package dev.m4tt3o.school;

import dev.m4tt3o.school.library.Book;
import dev.m4tt3o.school.library.Library;
import dev.m4tt3o.school.library.Member;

public class Main {

    public static void main(String[] args) {
        //Car firstCar = new Car("Porsche", "Benziner", 380, 2);
        //Car secondCar = new Car("Audi RS6", "Benziner", 550, 4);

        Library library = new Library("WISSL Library");

        Book b1 = new Book("B1", "Adventurous Story", "Max Mustermann");
        Book b2 = new Book("B2", "World Atlas", "Paul Müller");
        Member m1 = new Member("M1", "Alice");

        library.addBook(b1);
        library.addBook(b2);
        library.addMember(m1);

        System.out.println("Lending B1 to M1: " + library.lendBook("B1", "M1"));
        System.out.println("Lending B1 to M1 again (sollte false sein): " + library.lendBook("B1", "M1"));

        library.printStatus();

        System.out.println("Returning B1: " + library.returnBook("B1"));
        library.printStatus();

        library.printBooks();
        //System.out.println(firstCar.toString());
        //System.out.println(secondCar.toString());
    }
}
