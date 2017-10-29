/// scrGuiSubcomponent_toRootDimensions(subcomponent, inner_width, inner_height)
/// Convert the given dimensions (width/ height) in the subcomponent 
///   to equivalent dimensions in the root coord system.

// calculate outer dimensions (equivalent ones in parent coord system)
var outer_d = scrGuiSubcomponent_toOuterDimensions(argument0, 
    argument1, argument2);

var parent = argument0[? "parent"];
if (parent) {
    // it is not root -> continue recursive
    return scrGuiSubcomponent_toRootDimensions(parent, 
            outer_d[0], outer_d[1]);
} else {
    // we're root
    return outer_d;
}
