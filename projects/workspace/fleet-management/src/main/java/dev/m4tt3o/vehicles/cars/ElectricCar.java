package dev.m4tt3o.vehicles.cars;

public class ElectricCar extends Car {

    private double batteryCapacityKWh;
    private double consumptionPerKm;
    private int daysSinceLastService;

    public ElectricCar(
        String brand,
        String model,
        double batteryCapacityKWh,
        double consumptionPerKm,
        int daysSinceLastService,
        int passengerCapacity
    ) {
        super(brand, model, passengerCapacity);
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
        System.out.println("Servicing EV Car (" + getInfo() + "): Diagnostic scan & battery balance check.");
        this.daysSinceLastService = 0;
    }

    @Override
    public boolean isServiceNeeded() {
        return daysSinceLastService >= getServiceIntervalDays();
    }

    @Override
    public boolean passSafetyInspection() {
        return batteryCapacityKWh > 10.0;
    }
}
