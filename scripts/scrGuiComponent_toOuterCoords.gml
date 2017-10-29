/// scrGuiComponent_toOuterCoords(component, inner_x, inner_y)
/// Return the equivalent outer coordinates of a given inner position.

// convert to default inner origin
var inner_xy = scrGuiAnchorPoint_getOriginCoords(argument0[? "inner_anchor"], 
    argument1, argument2, 1, 1);

// convert to outer coord system units
var component_dimensions = argument0[? "outer_dimensions"];

var x_outer_scaled = inner_xy[0] * component_dimensions[0];
var y_outer_scaled = inner_xy[1] * component_dimensions[1];
    
// add to component origin coords
var component_pos = argument0[? "outer_pos"];
return array_of(component_pos[0] + x_outer_scaled, 
        component_pos[1] + y_outer_scaled);
