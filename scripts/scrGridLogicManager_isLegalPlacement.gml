/// scrGridLogicManager_isLegalPlacement(origin_x, origin_y, building_size_x, building_size_y): placement_possible
/// Checks if the building placement is possible on the given coords.

//var origin_coords = argument[0];    // start position of the building, [x,y] array
//var building_size = argument[1];    // physical size array 

// check each cell of the building
for (var x_step = 0; x_step < argument2; x_step++) {
    for (var y_step = 0; y_step < argument3; y_step++) {
        var cell_x = argument0 + x_step;
        var cell_y = argument1 - y_step;
        
        // check if building fits in boundary
        if (((cell_x < 0) or (cell_x >= MAP_GRID_SIZE)) or ((cell_y < 0) or (cell_y >= MAP_GRID_SIZE))){
            return false;
        }
        //check if cell is not occupied already
        if (objGridLogicManager.cell_occupied[cell_x, cell_y]) {
            return false
        }
    }
}
return true;
