/// scrGuiComponent_create(parent, outer_anchor, x, y, width, height, [width_height_scale])
/// Create and return an new gui component, which has its own local
///   coordinate system.

// Specify position and size of the component itself using the (outer)
//   containing coordinate system.
// If width_height_scaling is provided, one of width or height 
//   can be undefined, and will be set accordingly.

// get dimensions
if (argument_count > 6) {
    // scale width or height
    var dimensions = scrGuiComponent_getComponentDimensionsFromAspectRatio(
            argument[0],
            argument[4], argument[5],
            argument[6]);
} else {
    var dimensions = array_of(argument[4], argument[5]);
}

var list = ds_list_create();

// calulate Origin coords from coords of an anchor point
list[| gui_component.outer_pos] = scrGuiAnchorPoint_getOriginCoords(
        argument[1], 
        argument[2], argument[3], 
        dimensions[0], dimensions[1]);
//list[| gui_component.outer_anchor] = argument[3];


// save values
list[| gui_component.parent_component] = argument[0];

list[| gui_component.outer_dimensions] = dimensions;
        
return list;
