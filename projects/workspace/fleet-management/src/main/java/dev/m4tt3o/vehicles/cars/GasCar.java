package dev.m4tt3o.vehicles.cars;

public class GasCar extends Car {

    private double fuelTankLiters;
    private double consumptionPerKm;
    private int daysSinceLastService;

    public GasCar(
        String brand,
        String model,
        double fuelTankLiters,
        double consumptionPerKm,
        int daysSinceLastService,
        int passengerCapacity
    ) {
        super(brand, model, passengerCapacity);
        this.fuelTankLiters = fuelTankLiters;
        this.consumptionPerKm = consumptionPerKm;
        this.daysSinceLastService = daysSinceLastService;
    }

    @Override
    public double calculateMaxRangeKm() {
        return fuelTankLiters / consumptionPerKm;
    }

    @Override
    public void service() {
        System.out.println("Servicing Gas Car (" + getInfo() + "): Oil filter replacement & spark plug check.");
        this.daysSinceLastService = 0;
    }

    @Override
    public boolean isServiceNeeded() {
        return daysSinceLastService >= getServiceIntervalDays();
    }

    @Override
    public boolean passSafetyInspection() {
        return fuelTankLiters > 0;
    }
}
