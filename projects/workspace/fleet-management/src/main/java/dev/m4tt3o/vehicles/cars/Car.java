package dev.m4tt3o.vehicles.cars;

import dev.m4tt3o.VehicleCategory;
import dev.m4tt3o.vehicles.Vehicle;

public abstract class Car extends Vehicle {

    private int passengerCapacity;

    public Car(String brand, String model, int passengerCapacity) {
        super(brand, model, VehicleCategory.PASSENGER_CAR);
        this.passengerCapacity = passengerCapacity;
    }

    public int getPassengerCapacity() {
        return passengerCapacity;
    }

    @Override
    public int getServiceIntervalDays() {
        return 365;
    }

    @Override
    public int getInspectionIntervalMonths() {
        return 24;
    }
}
