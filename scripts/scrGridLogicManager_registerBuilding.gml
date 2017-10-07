/// scrGridLogicManager_registerBuilding(grid_x, grid_y, building_size_x, building_size_y)
/// Registers an object at the specified grid position

// set each cell of the building to occupied
for (var x_step = 0; x_step < argument2; x_step++) {
    for (var y_step = 0; y_step < argument3; y_step++) {
        objGridLogicManager.cell_occupied[argument0 + x_step, argument1 - y_step] = true;
    }
}
