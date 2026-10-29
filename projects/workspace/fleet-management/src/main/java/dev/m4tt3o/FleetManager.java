package dev.m4tt3o;

import dev.m4tt3o.vehicles.Vehicle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

public class FleetManager implements Sortable {

    private final List<Vehicle> fleet;

    public FleetManager() {
        this.fleet = new ArrayList<>();
    }

    public void addVehicle(Vehicle vehicle) {
        if (vehicle != null) {
            fleet.add(vehicle);
        }
    }

    public void addVehicle(int index, Vehicle vehicle) {
        if (vehicle != null && index >= 0 && index <= fleet.size()) {
            fleet.add(index, vehicle);
        }
    }

    public void addVehicle(Vehicle... vehicles) {
        for (Vehicle v : vehicles) {
            addVehicle(v);
        }
    }

    public boolean removeVehicle(Vehicle vehicle) {
        return fleet.remove(vehicle);
    }

    public List<Vehicle> getFleet() {
        return Collections.unmodifiableList(fleet);
    }

    @Override
    public void sortByRangeAscending() {
        fleet.sort(Comparator.comparingDouble(Vehicle::calculateMaxRangeKm));
    }

    @Override
    public void sortByRangeDescending() {
        fleet.sort(Comparator.comparingDouble(Vehicle::calculateMaxRangeKm).reversed());
    }

    @Override
    public void sortByBrandAscending() {
        fleet.sort(Comparator.comparing((v) -> v.getInfo().toLowerCase()));
    }

    @Override
    public void sortByBrandDescending() {
        fleet.sort(Comparator.<Vehicle, String>comparing((v) -> v.getInfo().toLowerCase()).reversed());
    }

    @Override
    public Map<VehicleCategory, List<Vehicle>> groupByCategory() {
        Map<VehicleCategory, List<Vehicle>> groupedMap = new EnumMap<>(VehicleCategory.class);

        for (Vehicle v : fleet) {
            groupedMap.computeIfAbsent(v.getCategory(), (k) -> new ArrayList<>()).add(v);
        }

        return groupedMap;
    }

    public void serviceAllDueVehicles() {
        System.out.println("=== Performing Maintenance on Due Vehicles ===");
        int servicedCount = 0;
        for (Vehicle v : fleet) {
            if (v.isServiceNeeded()) {
                v.service();
                servicedCount++;
            }
        }
        if (servicedCount == 0) {
            System.out.println("No vehicles currently require servicing.");
        }
    }

    public void serviceAllDueVehicles(VehicleCategory category) {
        System.out.println("=== Performing Maintenance for Category: " + category + " ===");
        int servicedCount = 0;
        for (Vehicle v : fleet) {
            if (v.getCategory() == category && v.isServiceNeeded()) {
                v.service();
                servicedCount++;
            }
        }
        if (servicedCount == 0) {
            System.out.println("No vehicles in " + category + " require servicing.");
        }
    }

    public void printFleetOverview() {
        System.out.println("=== Complete Fleet Overview (" + fleet.size() + " Vehicles) ===");
        for (Vehicle v : fleet) {
            System.out.printf(
                "- [%s] %s | Range: %.1f km | Needs Service: %s | Safety Inspection: %s%n",
                v.getCategory(),
                v.getInfo(),
                v.calculateMaxRangeKm(),
                v.isServiceNeeded() ? "YES" : "NO",
                v.passSafetyInspection() ? "PASS" : "FAIL"
            );
        }
    }

    public void printGroupedFleet() {
        System.out.println("=== Fleet Grouped by Category ===");
        Map<VehicleCategory, List<Vehicle>> grouped = groupByCategory();

        grouped.forEach((category, vehicles) -> {
            System.out.println("\n--- " + category + " (" + category.getDescription() + ") ---");
            for (Vehicle v : vehicles) {
                System.out.printf("  • %s | Range: %.1f km%n", v.getInfo(), v.calculateMaxRangeKm());
            }
        });
    }
}
