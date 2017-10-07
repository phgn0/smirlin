/// scrGridLogicManager_drawGrass()
/// draw the grass

random_set_seed(34); // generate grass type
var grass_types = sprite_get_number(sprGrass);

for (var i = 0; i < MAP_GRID_SIZE; i++) {
    for (var j = 0; j < MAP_GRID_SIZE; j++) {
        // grass
        var type = irandom(grass_types - 1);    // every frame the same (seed)
        
        // only draw in not occupied cells
        if (not objGridLogicManager.cell_occupied[i, j]) {
            var c = objGridLogicManager.grass_coords[# i, j];
            draw_sprite(sprGrass, type, c[0], c[1]);
        }
    }
}
