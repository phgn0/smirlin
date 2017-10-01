/// scrViewController_createInstance(x, y, obj): instance
/// Returns an instance of the provided object and manages the drawing of it. 
/// Position is specified by abstract 2d coords.

// Use changeInstancePosition to change the postion in the future

var abstract_x = argument[0];
var abstract_y = argument[1];
var obj = argument[2];

var real_coords = scrViewController_transformCoords(true, abstract_x, abstract_y);

var inst = instance_create(real_coords[0], real_coords[1], obj);

scrViewController_setDepth(inst, abstract_x, abstract_y);

return inst;
