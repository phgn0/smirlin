/// scrGuiSubcomponent_create(parent_component, outer_x, outer_y, outer_anchor, outer_width, outer_height, [inner_anchor])
/// Create and return an new gui subcomponent, which has its own local
///   coordinate system.

// Specify position and size of the component itself using the (outer)
//   coordinates of the containing coordinate system.
// Set inner anchor to specify the origin (0,0) position of the new coordinate
//   system (defaults to top left);

var map = ds_map_create();

// save values
map[? "parent"] = argument0;

map[? "outer_x"] = argument1;
map[? "outer_y"] = argument2;
map[? "outer_anchor"] = argument3;

map[? "outer_width"] = argument4; // size of the component in outer units
map[? "outer_height"] = argument5;

if (argument_count >= 7) {
    map[? "inner_anchor"] = argument[6];
} else {
    map[? "inner_anchor"] = anchor_point.top_left;
}

return map;
