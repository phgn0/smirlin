/// scrGuiComponent_scaleToAspectRatio(width, height, width_height_ratio)
/// Returns width and height. One of width and height can be undefined, 
///   it will be scaled according to the provided aspect ratio.

// This only works with raw values (does not account for component
//   coords systems)

if (not argument0) {
    // scale width
    var height = argument1;
    var width = height * argument2;
} else {
    // scale height
    var width = argument0;
    var height = width / argument2;
}

return array_of(width, height);
