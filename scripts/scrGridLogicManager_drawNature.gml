/// scrGridLogicManager_drawNature()
/// Draws Nature (Trees) on not occupied tiles.

for (var i = 0; i < MAP_GRID_SIZE; i++) {
    for (var j = 0; j < MAP_GRID_SIZE; j++) {
        // only draw in not occupied cells
        if (not objGridLogicManager.cell_occupied[i, j]) {
            // trees at that cell
            var cell_trees = objGridLogicManager.trees[i, j];
            if (ds_exists(cell_trees, ds_type_list)) {
                // loop over trees
                for (var t = 0; t < ds_list_size(cell_trees); t++) {
                    // draw tree
                    var coords = cell_trees[| t];
                    draw_sprite_ext(sprTree, 0, coords[0], coords[1], 0.3, 0.3, 0, c_white, 1);
                }
            }
        }
        
    }
}
