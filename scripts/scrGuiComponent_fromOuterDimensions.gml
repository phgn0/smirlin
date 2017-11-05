/// scrGuiComponent_fromOuterDimensions(component, outer_width, outer_height)
/// Return the equivalent inner width/ height (of the component)
///   to the given outer width/ height.

var component_dimensions = argument0[| gui_component.outer_dimensions];
return array_of(
        argument1 / component_dimensions[0], 
        argument2 / component_dimensions[1]);
