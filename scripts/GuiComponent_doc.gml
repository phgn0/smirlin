/// GuiComponent_doc

// Gui components provide methods to nest multiple independent coordinate
//   systems. The created coordinate systems are normalized to the size of
//   the component, which means 1 x unit in the component equals 
//   width x units in the containing one.
//   (and 1 inner y unit equals height outer y inits)

// Using this you can specify the position and size of an gui element using the
//   gui screen coordinates, and place parts of the element using an extra 
//   local coordinate system.

// values on each component
enum gui_component {
    parent_component,
    outer_pos,
    outer_anchor,
    outer_dimensions,
    inner_anchor
}
