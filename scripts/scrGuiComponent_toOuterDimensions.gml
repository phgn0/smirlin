/// scrGuiComponent_toOuterDimensions(component, inner_width, inner_height)
/// Return the outer width/ height equivalent to the given inner width/ height.

var component_dimensions = argument0[? "outer_dimensions"];
return array_of(component_dimensions[0] * argument1, 
        component_dimensions[1] * argument2);
