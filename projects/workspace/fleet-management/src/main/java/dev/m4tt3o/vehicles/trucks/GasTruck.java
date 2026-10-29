package dev.m4tt3o.vehicles.trucks;

public class GasTruck extends Truck {

    private double fuelTankLiters;
    private double consumptionPerKm;
    private int daysSinceLastService;

    public GasTruck(
        String brand,
        String model,
        double fuelTankLiters,
        double consumptionPerKm,
        int daysSinceLastService,
        double cargoCapacityTons
    ) {
        super(brand, model, cargoCapacityTons);
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
        System.out.println("Servicing Diesel Truck (" + getInfo() + "): AdBlue flush, oil filter, & air brakes check.");
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
