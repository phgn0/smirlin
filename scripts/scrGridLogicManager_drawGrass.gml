/// scrGridLogicManager_drawGrass()
/// draw the grass

for (var i = 0; i < MAP_GRID_SIZE; i++) {
    for (var j = 0; j < MAP_GRID_SIZE; j++) {
        // grass
        
        // only draw in not occupied cells
        if (not objGridLogicManager.cell_occupied[i, j]) {
            var c = objGridLogicManager.grass_coords[# i, j];
            draw_sprite(sprGrass, objGridLogicManager.grass_types[# i, j], c[0], c[1]);
        }
    }
}
