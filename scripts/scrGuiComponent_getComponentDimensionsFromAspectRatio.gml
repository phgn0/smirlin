/// scrGuiComponent_getComponentDimensionsFromAspectRatio(component, width, height, width_height_ratio)
/// Returns width and height. One of width and height can be undefined, 
///   it will be scaled according to the provided aspect ratio.

// This scales dimensions in the root coord system (pixels), so
//   that different sized guicomponents have no effect.


// we use conversion functions that take width and height, so
//   set the unknown one to 0
if (is_undefined(argument1)) {
    // scale width
    var height = argument2;
    var width = 0;
} else if (is_undefined(argument2)){
    // scale height
    var width = argument1;
    var height = 0;
} else {
    log("GuiComponent dimension scaling", "You provided width, height and width_height scaling. Which one should be scaled?", importance_level.dev_misuse);
}
    
// convert to root dimensions
var root_dims = scrGuiComponent_toRootDimensions(argument0,
    width, height);
   
// set the unknown value (that we replaced with 0) to undefined 
if (not argument1) {
    // scale width
    root_dims[@ 0] = undefined;
} else {
    // scale height
    root_dims[@ 1] = undefined;
}

// scale unknown value according to the aspect ratio
var root_dims = scrGuiComponent_scaleToAspectRatio(
        root_dims[0], root_dims[1], argument3);

// convert back to component dimensions
return scrGuiComponent_fromRootDimensions(argument0,
        root_dims[0], 
        root_dims[1]);
