/// scrViewController_createInstance(x, y, obj): instance
/// Returns an Instance of the provided object and manages the drawing of it. 

// Use changeInstancePosition to change the postion in the future

var abstract_x = argument[0];
var abstract_y = argument[1];
var obj = argument[2];

var real_coords = scrViewController_transformCoords(true, abstract_x, abstract_y);

var inst = instance_create(real_coords[0], real_coords[1], obj);

with(inst) {
    // set render order by 2d coords
    depth = - abstract_y * MAP_GRID_SIZE + abstract_x
}

return inst;
