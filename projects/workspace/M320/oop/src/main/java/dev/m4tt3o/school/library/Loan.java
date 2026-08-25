package dev.m4tt3o.school.library;

import java.time.LocalDate;

public class Loan {

    private Book book;
    private Member member;
    private LocalDate checkoutDate;
    private LocalDate returnDate;

    public Loan(Book book, Member member) {
        this.book = book;
        this.member = member;
        this.checkoutDate = LocalDate.now();
        this.returnDate = null;
    }

    public boolean isActive() {
        return returnDate == null;
    }

    public void markReturned() {
        this.returnDate = LocalDate.now();
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public LocalDate getCheckoutDate() {
        return checkoutDate;
    }

    public void setCheckoutDate(LocalDate checkoutDate) {
        this.checkoutDate = checkoutDate;
    }

    public LocalDate getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(LocalDate returnDate) {
        this.returnDate = returnDate;
    }

    @Override
    public String toString() {
        return (
            "Loan{" +
            "book=" +
            book +
            ", member=" +
            member +
            ", checkoutDate=" +
            checkoutDate +
            ", returnDate=" +
            returnDate +
            '}'
        );
    }
}
