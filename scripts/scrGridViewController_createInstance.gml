/// scrGridViewController_createInstance(grid_x, grid_y, obj)
/// create an instance of the proved object on the specified grid position

// (instance origin is the left corner of a grid cell)

var grid_x = argument[0];
var grid_y = argument[1];
var obj = argument[2];

var abstract_coords = scrGridViewController_gridToAbstractCoords(grid_x, grid_y);

return scrViewController_createInstance(abstract_coords[0], abstract_coords[1], obj);
