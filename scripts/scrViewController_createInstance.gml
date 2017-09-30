/// scrViewController_createInstance(x, y, obj): instance
/// Returns an Instance of the provided object and manages the drawing of it. 

// Use changeInstancePosition to change the postion in the future

var pos_x = argument[0];
var pos_y = argument[1];
var obj = argument[2];

var real_coords = scrViewController_transformCoords(true, pos_x, pos_y);

var inst = instance_create(real_coords[0], real_coords[1], obj);

with(inst) {
    depth = -y; // set render order
}

return inst;
