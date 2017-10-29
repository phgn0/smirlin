/// scrGuiComponent_toRootDimensions(component, inner_width, inner_height)
/// Convert the given dimensions (width/ height) in the component 
///   to equivalent dimensions in the root coord system.

// calculate outer dimensions (equivalent ones in parent coord system)
var outer_d = scrGuiComponent_toOuterDimensions(argument0, 
    argument1, argument2);

var parent = argument0[| gui_component.parent_component];
if (parent) {
    // it is not root -> continue recursive
    return scrGuiComponent_toRootDimensions(parent, 
            outer_d[0], outer_d[1]);
} else {
    // we're root
    return outer_d;
}
