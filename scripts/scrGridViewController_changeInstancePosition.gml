/// scrGridViewController_changeInstancePosition(grid_x, grid_y, inst)
/// Change the grid position of an instance.

var abstract_coords = scrGridViewController_gridToAbstractCoords(
    argument0, argument1);
    
scrViewController_changeInstancePosition(
        abstract_coords[0], abstract_coords[1], argument2);
