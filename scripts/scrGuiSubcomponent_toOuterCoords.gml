/// scrGuiSubcomponent_toOuterCoords(subcomponent, inner_x, inner_y)
/// Return the equivalent outer coordinates of a given inner position.

// convert to default inner origin
var inner_xy = scrGuiAnchorPoint_getOriginCoords(argument0[? "inner_anchor"], 
    argument1, argument2, 1, 1);

// convert to outer coords system units
var x_outer_scaled = inner_xy[0] * argument0[? "outer_width"];
var y_outer_scaled = inner_xy[1] * argument0[? "outer_height"];
    
// add to subcomponent coords
return array_of(argument0[? "outer_x"] + x_outer_scaled[0], 
        argument0[? "outer_y"] + y_outer_scaled[1]);
