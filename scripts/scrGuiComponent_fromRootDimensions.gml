#define scrGuiComponent_fromRootDimensions
/// scrGuiComponent_fromRootDimensions(component, root_width, root_height)
/// Convert the given root dimensions (width/ height) 
///   to equivalent component coordinate system dimensions.

// calculate recursive
return scrGuiComponent_fromRootDimensions_recursiveStep(
        argument0, array_of(argument1, argument2));

#define scrGuiComponent_fromRootDimensions_recursiveStep
/// scrGuiComponent_fromRootDimensions_recursiveStep(component, root_dimensions)

var parent = argument0[| gui_component.parent_component];

if (parent != undefined) {
    // it is not root -> get parent dimensions
    var parent_dimensions = scrGuiComponent_fromRootDimensions_recursiveStep(
            parent, argument1);
} else {
    // we're root
    var parent_dimensions = argument1;
}

// convert to my dimensions
return scrGuiComponent_fromOuterDimensions(argument0,
        parent_dimensions[0], parent_dimensions[1]);