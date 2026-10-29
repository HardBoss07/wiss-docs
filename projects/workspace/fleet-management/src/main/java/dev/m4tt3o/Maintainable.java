package dev.m4tt3o;

public interface Maintainable {
    void service();
    int getServiceIntervalDays();
    boolean isServiceNeeded();
}
