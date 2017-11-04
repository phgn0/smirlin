/// GuiBox_doc
/// The GuiBox system provides an method to abstract possible
///   gui elements (Rectangle, Text, Sprite, ...) with its belonging
///   configuration as 'Boxes' of specific types.
/// This allows to draw these 'Boxes' without any additional 
///   configration and independent of what gui element a box 
///   actually represents.

// possible types of guiboxes
enum guibox_types {
    rectangle,
    circle,
    sprite
}

// possible attributes of an guibox
enum guibox {
    /// properties on each guibox
    type,
    component,
    pos_root,
    dimensions_root,
    
    /// properties present on special guibox types
    
    // rectangle
    color,
    
    // sprite
    sprite,
    sprite_scaling
}
