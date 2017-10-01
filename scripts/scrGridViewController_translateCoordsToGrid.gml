/// scrGridViewController_translateCoordsToGrid(x, y): [grid_x, grid_y]
/// returns the grid cell coordinates the given coords fall into

var real_x = argument[0];
var real_y = argument[1];

var grid_coords = scrViewController_transformCoords(false, real_x, real_y);

grid_coords[0] = round(grid_coords[0]);
grid_coords[1] = round(grid_coords[1]);

return grid_coords;
