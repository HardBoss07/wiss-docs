package dev.m4tt3o;

import dev.m4tt3o.vehicles.cars.*;
import dev.m4tt3o.vehicles.trucks.*;

public class Main {

    public static void main(String[] args) {
        FleetManager manager = new FleetManager();

        manager.addVehicle(
            new ElectricCar("Tesla", "Model 3", 75.0, 0.16, 400, 4),
            new GasCar("Volkswagen", "Golf", 50.0, 0.06, 100, 5),
            new ElectricTruck("Volvo", "FH Electric", 540.0, 1.2, 120, 18.0),
            new GasTruck("Scania", "R500", 400.0, 0.35, 200, 24.0)
        );

        manager.addVehicle(0, new GasTruck("Ford", "Transit", 80.0, 0.11, 50, 2.8));

        System.out.println("=== Initial Fleet ===");
        manager.printFleetOverview();
        System.out.println();

        manager.serviceAllDueVehicles(VehicleCategory.HEAVY_DUTY_TRUCK);
        System.out.println();

        manager.serviceAllDueVehicles();
    }
}
