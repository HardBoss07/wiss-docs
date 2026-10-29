package dev.m4tt3o;

import dev.m4tt3o.vehicles.Vehicle;
import java.util.List;
import java.util.Map;

public interface Sortable {
    void sortByRangeAscending();
    void sortByRangeDescending();
    void sortByBrandAscending();
    void sortByBrandDescending();
    Map<VehicleCategory, List<Vehicle>> groupByCategory();
}
