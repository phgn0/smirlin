/// scrViewController_setDepth(instance)
/// Sets the correct depth to the instance, so that it will render correctly

var inst = argument[0];

with(inst) {
    // set render order by 2d coords
    depth = - abstract_y * MAP_GRID_SIZE + abstract_x
}

