package dev.m4tt3o.vehicles;

import dev.m4tt3o.Inspectable;
import dev.m4tt3o.Maintainable;
import dev.m4tt3o.VehicleCategory;

public abstract class Vehicle implements Maintainable, Inspectable {

    private String brand;
    private String model;
    private VehicleCategory category;

    public Vehicle(String brand, String model, VehicleCategory category) {
        this.brand = brand;
        this.model = model;
        this.category = category;
    }

    public String getInfo() {
        return brand + " " + model;
    }

    public VehicleCategory getCategory() {
        return category;
    }

    public abstract double calculateMaxRangeKm();
}
