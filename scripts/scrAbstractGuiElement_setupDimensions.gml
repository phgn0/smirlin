/// scrAbstractGuiElement_setupDimensions(inst, width_rel, height_rel, [width_to_height_ratio]);
/// Sets up the dimensions (width, height) of an gui element.
// If width to height ratio is provided, one of width_rel or height_rel 
//   can be undefined, it will be set according to the ratio.

with(argument[0]) {
    width_rel = argument[1];
    height_rel = argument[2];
    
    if (argument_count > 3) {
        // given ratio
        // -> scale (width, height) according to ratio
        
        if (not width_rel) {
            // scale real width
            height = height_rel * objGuiHandler.gui_height;
            width = argument[3] * height;
        } else {
            // scale real height
            width = width_rel * objGuiHandler.gui_width;
            height = width / argument[3];
        }
    } else {
        // dimensions according to given width, height
        width = width_rel * objGuiHandler.gui_width;
        height = height_rel * objGuiHandler.gui_height;
    }
    
    show_debug_message(width);
    show_debug_message(height);
}
