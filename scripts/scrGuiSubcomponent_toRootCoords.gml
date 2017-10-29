/// scrGuiSubcomponent_toRootCoords(subcomponent, inner_x, inner_y)
/// Convert the given coordinates in the subcomponent to equivalent
///   coords in the root coord system.

// calculate outer coords (equivalent coords in parent coord system)
var outer_coords = scrGuiSubcomponent_toOuterCoords(argument0, 
    argument1, argument2);

var parent = argument0[? "parent"];
if (parent) {
    // it is not root -> continue recursive
    return scrGuiSubcomponent_toRootCoords(parent, 
            outer_coords[0], outer_coords[1]);
} else {
    // we're root
    return outer_coords;
}
