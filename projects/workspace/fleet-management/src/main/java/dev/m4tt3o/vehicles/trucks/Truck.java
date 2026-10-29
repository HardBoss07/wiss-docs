package dev.m4tt3o.vehicles.trucks;

import dev.m4tt3o.VehicleCategory;
import dev.m4tt3o.vehicles.Vehicle;

public abstract class Truck extends Vehicle {

    private double cargoCapacityTons;

    public Truck(String brand, String model, double cargoCapacityTons) {
        super(
            brand,
            model,
            cargoCapacityTons > 3.5 ? VehicleCategory.HEAVY_DUTY_TRUCK : VehicleCategory.LIGHT_COMMERCIAL
        );
        this.cargoCapacityTons = cargoCapacityTons;
    }

    public double getCargoCapacityTons() {
        return cargoCapacityTons;
    }

    @Override
    public int getServiceIntervalDays() {
        return 180;
    }

    @Override
    public int getInspectionIntervalMonths() {
        return 12;
    }

    @Override
    public String getInfo() {
        return super.getInfo() + " (" + cargoCapacityTons + "t Cargo)";
    }
}
