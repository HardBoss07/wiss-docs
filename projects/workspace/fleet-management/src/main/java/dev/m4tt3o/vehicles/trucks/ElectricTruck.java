package dev.m4tt3o.vehicles.trucks;

public class ElectricTruck extends Truck {

    private double batteryCapacityKWh;
    private double consumptionPerKm;
    private int daysSinceLastService;

    public ElectricTruck(
        String brand,
        String model,
        double batteryCapacityKWh,
        double consumptionPerKm,
        int daysSinceLastService,
        double cargoCapacityTons
    ) {
        super(brand, model, cargoCapacityTons);
        this.batteryCapacityKWh = batteryCapacityKWh;
        this.consumptionPerKm = consumptionPerKm;
        this.daysSinceLastService = daysSinceLastService;
    }

    @Override
    public double calculateMaxRangeKm() {
        return batteryCapacityKWh / consumptionPerKm;
    }

    @Override
    public void service() {
        System.out.println(
            "Servicing Heavy EV Truck (" + getInfo() + "): High-voltage coolant replacement & brake check."
        );
        this.daysSinceLastService = 0;
    }

    @Override
    public boolean isServiceNeeded() {
        return daysSinceLastService >= getServiceIntervalDays();
    }

    @Override
    public boolean passSafetyInspection() {
        return true;
    }
}
