/// scrGuiComponent_toOuterCoords(component, inner_x, inner_y)
/// Return the equivalent outer coordinates of a given inner position.

// convert to outer coord system units
var component_dimensions = argument0[| gui_component.outer_dimensions];

var x_outer_scaled = argument1 * component_dimensions[0];
var y_outer_scaled = argument2 * component_dimensions[1];
    
// add to component origin coords
var component_pos = argument0[| gui_component.outer_pos];
return array_of(component_pos[0] + x_outer_scaled, 
        component_pos[1] + y_outer_scaled);
