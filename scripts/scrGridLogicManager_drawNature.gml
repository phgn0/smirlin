/// scrGridLogicManager_drawNature()
/// Draws Nature (Grass, Trees, ...) on not occupied tiles.

random_set_seed(34);

var grass_types = sprite_get_number(sprGrass);

// grass
for (var i = 0; i < MAP_GRID_SIZE; i++) {
    for (var j = 0; j < MAP_GRID_SIZE; j++) {
        if (not objGridLogicManager.cell_occupied[i, j]) {
            //scrGridViewController_drawSprite(i, j, sprGrass, random_range(0, grass_types));
            var c = objGridLogicManager.grass_coords[i, j];
            draw_sprite(sprGrass, random_range(0, grass_types), c[0], c[1]);
        }
    }
}

// trees
for (var t = 0; t < 2000; t++) {
    var c = objGridLogicManager.tree_coords[t];
    draw_sprite_ext(sprTree, 0, c[0], c[1], 0.3, 0.3, 0, c_white, 1);
}
