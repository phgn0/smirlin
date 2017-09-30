/// scrViewController_changeInstancePosition(x, y, inst)
/// Changes the postion of the instance to the provided abstracted 2d coordinates.

var pos_x = argument[0];
var pos_y = argument[1];
var inst = argument[2];

var real_coords = scrViewController_transformCoords(true, pos_x, pos_y);

with(inst) {
    x = real_coords[0];
    y = real_coords[1];
    depth = -y; // set render order
}
