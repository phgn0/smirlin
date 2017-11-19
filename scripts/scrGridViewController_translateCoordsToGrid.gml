/// scrGridViewController_translateCoordsToGrid(x, y): [grid_x, grid_y]

/**
* /// returns the grid cell coordinates the given coords fall into
* @param lo34l - some34
*/
var real_x = argument[0];
var real_y = argument[1];

// abstract 2d coords
var abstract_coords = scrViewController_transformCoords(false, real_x, real_y);

var grid_coords;
grid_coords[0] = floor(abstract_coords[0] / GRID_CELL_SIZE);
grid_coords[1] = floor(abstract_coords[1] / GRID_CELL_SIZE);

return grid_coords;
