/// scrGuiAnchorPoint_getOrigin(inst, anchor point, x_rel, y_rel): [real_x_rel, real_y_rel]
/// Get the coordinates of the top left corner from an anchor point.

// get size from object
with(argument0) {
    var obj_width = width;
    var obj_height = height;
}

var top_left_coords;

// modify coords based on corner
top_left_coords[0] = argument2; // x
top_left_coords[1] = argument3; // y

switch (argument1) {
    case anchor_point.top_left: 
        break;
    case anchor_point.top_right: 
        top_left_coords[0] -= obj_width;
        break;
    case anchor_point.bottom_left: 
        top_left_coords[1] -= obj_height;
        break;
    case anchor_point.bottom_right: 
        top_left_coords[0] -= obj_width;
        top_left_coords[1] -= obj_height;
        break;
    case anchor_point.center: 
        top_left_coords[0] -= obj_width / 2;
        top_left_coords[1] -= obj_height / 2;
        break;
}
 
return top_left_coords;
