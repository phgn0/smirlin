/// scrAbstractGuiElement_getDimensionsFromAspectRatio(height, width, width_to_height_ratio)
/// Returns width and height. One of width and height can be undefined, it will
///   be scaled according to the provided aspect ratio.

if (not width_rel) {
    // scale width
    var height = argument0;
    var width = height * argument2;
} else {
    // scale height
    var width = argument1;
    var height = width / argument2;
}

return array_of(width, height);
