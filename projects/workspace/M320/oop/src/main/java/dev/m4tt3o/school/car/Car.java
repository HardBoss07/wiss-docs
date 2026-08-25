package dev.m4tt3o.school.car;

public class Car {

    String brand;
    String engineType;
    int ps;
    int numberOfDoors;

    public Car(String brand, String engineType, int ps, int numberOfDoors) {
        this.engineType = engineType;
        this.ps = ps;
        this.numberOfDoors = numberOfDoors;
        this.brand = brand;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }

    public int getPs() {
        return ps;
    }

    public void setPs(int ps) {
        this.ps = ps;
    }

    public int getNumberOfDoors() {
        return numberOfDoors;
    }

    public void setNumberOfDoors(int numberOfDoors) {
        this.numberOfDoors = numberOfDoors;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public String toString() {
        return (
            "Car{" +
            "engineType='" +
            engineType +
            '\'' +
            ", ps=" +
            ps +
            ", numberOfDoors=" +
            numberOfDoors +
            ", brand='" +
            brand +
            '\'' +
            '}'
        );
    }
}
