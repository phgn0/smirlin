/// scrGuiComponent_create(parent_component, outer_x, outer_y, outer_anchor, outer_width, outer_height, [inner_anchor])
/// Create and return an new gui component, which has its own local
///   coordinate system.

// Specify position and size of the component itself using the (outer)
//   coordinates of the containing coordinate system.
// Set inner anchor to specify the origin (0,0) position of the new coordinate
//   system (defaults to top left);

var map = ds_map_create();

// save values
map[? "parent_component"] = argument0;

map[? "outer_pos"] = array_of(argument1, argument2);
map[? "outer_anchor"] = argument3;

map[? "outer_dimensions"] = array_of(argument4, argument5);

// inner anchor optional
if (argument_count >= 7) {
    map[? "inner_anchor"] = argument[6];
} else {
    map[? "inner_anchor"] = anchor_point.top_left;
}

return map;
