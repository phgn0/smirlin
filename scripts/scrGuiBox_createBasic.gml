/// scrGuiBox_createBasic(component, x, y, width, height, width_height_scaling)
/// Creates an basic guibox (called by each special type)

// If width_height_scaling is provided, one of width or height 
//   can be undefined, and will be set accordingly.

// get dimensions
if (not is_undefined(argument[5])) {
    // scale width or height
    var dimensions = scrGuiComponent_getComponentDimensionsFromAspectRatio(
            argument[0],
            argument[3], argument[4],
            argument[5]);
} else {
    var dimensions = array_of(argument[3], argument[4]);
}

var box = ds_list_create();

box[| guibox.component] = argument[0];

// calculate root component equivalents
box[| guibox.pos_root] = scrGuiComponent_toRootCoords(argument[0], 
        argument[1], argument[2]);
box[| guibox.dimensions_root] = scrGuiComponent_toRootDimensions(argument[0], 
        dimensions[0], dimensions[1]);

return box;
