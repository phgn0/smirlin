/// scrGuiAnchorPoint_getCoordsRelativeToOrigin(anchor_point, x, y, width, height)
/// Get coordinates relative to the origin (top left) corner from 
///   coords relative to an specified (other) anchor point.

// use getOriginCoords logic     
var modifier = scrGuiAnchorPoint_getOriginCoords(argument0,
        0, 0, argument3, argument4);
  
// this here is the opposite calculation (+ instead of -), so invert
// then add coords to the modifier
modifier[0] = -modifier[0] + argument1;
modifier[1] = -modifier[1] + argument2;

return modifier;
