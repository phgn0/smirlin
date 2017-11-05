/// scrGuiComponent_create(parent, x, y, outer_anchor, width, height)
/// Create and return an new gui component, which has its own local
///   coordinate system.

// Specify position and size of the component itself using the (outer)
//   containing coordinate system.
// Set inner anchor to specify the origin (0,0) position of the new coordinate
//   system (defaults to top left);

var list = ds_list_create();

// calulate Origin coords from coords of an anchor point
list[| gui_component.outer_pos] = scrGuiAnchorPoint_getOriginCoords(
        argument[3], 
        argument[1], argument[2], 
        argument[4], argument[5]);
//list[| gui_component.outer_anchor] = argument[3];


// save values
list[| gui_component.parent_component] = argument[0];

list[| gui_component.outer_dimensions] = array_of(
        argument[4], argument[5]);
        
return list;
