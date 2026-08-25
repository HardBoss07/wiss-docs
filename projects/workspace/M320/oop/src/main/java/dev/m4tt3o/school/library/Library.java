package dev.m4tt3o.school.library;

import java.util.ArrayList;
import java.util.List;

public class Library {

    private String name;
    private List<Book> books = new ArrayList<>();
    private List<Member> members = new ArrayList<>();
    private List<Loan> loans = new ArrayList<>();

    public Library(String name) {
        this.name = name;
    }

    public void addBook(Book book) {
        books.add(book);
    }

    public void addMember(Member member) {
        members.add(member);
    }

    public boolean lendBook(String bookId, String memberId) {
        Book book = findBook(bookId);
        Member member = findMember(memberId);

        if (book == null || member == null || book.isLentOut()) {
            return false;
        }

        book.setLentOut(true);
        loans.add(new Loan(book, member));
        return true;
    }

    public boolean returnBook(String bookId) {
        Book book = findBook(bookId);
        if (book == null || !book.isLentOut()) {
            return false;
        }

        for (Loan loan : loans) {
            if (loan.getBook().getId().equals(bookId) && loan.isActive()) {
                loan.markReturned();
                book.setLentOut(false);
                return true;
            }
        }
        return false;
    }

    private Book findBook(String id) {
        return books
            .stream()
            .filter((b) -> b.getId().equals(id))
            .findFirst()
            .orElse(null);
    }

    private Member findMember(String id) {
        return members
            .stream()
            .filter((m) -> m.getMemberId().equals(id))
            .findFirst()
            .orElse(null);
    }

    public void printBooks() {
        for (int i = 0; i < books.size(); i++) {
            System.out.println(books.get(i).getTitle());
        }
    }

    public void printStatus() {
        System.out.println("=== " + name + " State ===");
        System.out.println("Books:");
        books.forEach((b) -> System.out.println("  " + b));
        System.out.println("Active & Past Loans:");
        loans.forEach((l) -> System.out.println("  " + l));
        System.out.println();
    }
}
