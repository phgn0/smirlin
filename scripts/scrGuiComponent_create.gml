/// scrGuiComponent_create(parent_component, outer_x, outer_y, outer_anchor, outer_width, outer_height, [inner_anchor])
/// Create and return an new gui component, which has its own local
///   coordinate system.

// Specify position and size of the component itself using the (outer)
//   coordinates of the containing coordinate system.
// Set inner anchor to specify the origin (0,0) position of the new coordinate
//   system (defaults to top left);

var list = ds_list_create();

// save values
list[| gui_component.parent_component] = argument[0];

list[| gui_component.outer_pos] = array_of
        (argument[1], argument[2]);
list[| gui_component.outer_anchor] = argument[3];

list[| gui_component.outer_dimensions] = array_of(
        argument[4], argument[5]);

// inner anchor optional
if (argument_count >= 7) {
    list[| gui_component.inner_anchor] = argument[6];
} else {
    list[| gui_component.inner_anchor] = anchor_point.top_left;
}

return list;
