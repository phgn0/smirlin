/// scrGuiAnchorPoint_getOriginCoords(anchor_point, x_rel, y_rel, width, height): [real_x_rel, real_y_rel]
/// Get coordinates relative to the origin (top left) corner from 
///   coords relative to an specified (other) anchor point.

var obj_width = argument3;
var obj_height = argument4;

var top_left_coords;

// modify coords based on corner
top_left_coords[0] = argument1; // x
top_left_coords[1] = argument2; // y

switch (argument0) {
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
