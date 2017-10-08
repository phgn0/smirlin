/// scrAbstractBuilding_scale(id, sprite_width, size_x, size_y)
/// Set the scale of the instance id so that its sprite matches its size.

var cell_width = GRID_CELL_SIZE * ISOMETRIC_WIDTH_SCALING;

// how many cell widths should the asset be wide
var factor = ((argument2 + argument3 - 2) * 0.5 + 1);

argument0.image_xscale = factor * cell_width / argument1;
argument0.image_yscale = argument0.image_xscale;
