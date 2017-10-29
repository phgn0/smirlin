/// scrGuiComponent_toRootCoords(component, inner_x, inner_y)
/// Convert the given coordinates in the component to equivalent
///   coords in the root coord system.

// calculate outer coords (equivalent coords in parent coord system)
var outer_coords = scrGuiComponent_toOuterCoords(argument0, 
    argument1, argument2);

var parent = argument0[| gui_component.parent_component];
if (parent) {
    // it is not root -> continue recursive
    return scrGuiComponent_toRootCoords(parent, 
            outer_coords[0], outer_coords[1]);
} else {
    // we're root
    return outer_coords;
}
