/// scrGridViewController_gridToAbstractCoords(grid_x, grid_y): [abstract_x, abstract_y]
/// transform grid coords to abstract 2d coords

var coords;
coords[0] = argument[0] * GRID_CELL_SIZE;
coords[1] = (argument[1] + 1) * GRID_CELL_SIZE

return coords;
