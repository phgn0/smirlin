/// Subcomponent_doc

// Gui subcomponents provide methods to nest multiple independent coordinate
//   systems. The created coordinate systems are normalized to the size of
//   the subcomponent, which means 1 x unit in the subcomponent equals 
//   width x units in the containing one.
//   (and 1 inner y unit equals height outer y inits)

// Using this you can specify the position and size of an gui element using the
//   gui screen coordinates, and place parts of the element using an extra 
//   local coordinate system.
