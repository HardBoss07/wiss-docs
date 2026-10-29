package dev.m4tt3o;

public enum VehicleCategory {
    PASSENGER_CAR("Category A1 - Passenger Transport"),
    LIGHT_COMMERCIAL("Category B2 - Light Goods Transport"),
    HEAVY_DUTY_TRUCK("Category C3 - Heavy Goods Transport");

    private final String description;

    VehicleCategory(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
