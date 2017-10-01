/// scrViewController_setDepth(instance, abstract_x, abstract_x)
/// Sets the correct depth to the instance, so that it will render correctly

var inst = argument[0];

// abstract 2d position of the instance
var abstract_x = argument[1];
var abstract_y = argument[2];

with(inst) {
    // set render order by 2d coords
    depth = - (abstract_y * MAP_GRID_SIZE + abstract_x);
}

