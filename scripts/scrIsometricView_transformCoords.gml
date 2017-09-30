/// scrIsometricView_transformCoords(from_abstract_coords, x, y): [new_x, new_y]
/// transform abstract 2d coordiantes to coordinates used for drawing in isometric view

var from_abstract_coords = argument[0];     // the direction to perform a transform
var x_coord = argument[1];
var y_coord = argument[2];

// https://yal.cc/understanding-isometric-grids/
var coords;

if (from_abstract_coords) {
    // transform to real coordinates
    coords[0] = objViewController.origin_x + ((x_coord - y_coord) * ISOMETRIC_WIDTH_SCALING) / 2 ;
    coords[1] = objViewController.origin_y + (x_coord + y_coord) / 2;
} else {
    // transform to abstracted 2d
    coords[0] = x_coord / ISOMETRIC_WIDTH_SCALING + y_coord;
    coords[1] = y_coord - x_coord / ISOMETRIC_WIDTH_SCALING;
}

coords[0] = round(coords[0]);
coords[1] = round(coords[1]);

return coords;
