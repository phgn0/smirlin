/// scrAbstractGuiElement_setupPosition(inst, anchor, x_rel, y_rel);
/// Sets up the position of an gui element.

// setupDimensions has to be called first, because we need the 
//   width / height here.

with(argument0) {
    anchor = argument1;
    x_rel = argument2;
    y_rel = argument3;
    
    // relative to real (pixel) position
    var xy = scrGui_getRealCoords(x_rel, y_rel);
    //show_debug_message(xy);
    
    // translate to standart top left corner coords
    var xy = scrGuiAnchorPoint_getOrigin(argument0, 
            anchor, xy[0], xy[1]);
    //show_debug_message(xy);
    x = xy[0];
    y = xy[1];
}
