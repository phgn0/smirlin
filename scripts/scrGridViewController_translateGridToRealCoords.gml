/// scrGridViewController_translateGridToRealCoords(grid_x, grid_y, [float]): [real_x, real_y]
/// returns the real coordinates of the given grid coords (integers or floats).

var grid_x = argument[0];
var grid_y = argument[1];

// if we're using a float, subtract 1 from grid y value, because for normal int coords 
// we're subtracting 1 later (offset of draw origin)
if (argument_count >= 3 and argument[2]) {
    grid_y -= 1;
}
    
var abstract_coords = scrGridViewController_gridToAbstractCoords(grid_x, grid_y);

return scrViewController_transformCoords(true, abstract_coords[0], abstract_coords[1]);
