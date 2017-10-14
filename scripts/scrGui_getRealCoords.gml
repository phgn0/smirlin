/// scrGui_getRealCoords(x_rel, y_rel): [x, y]
/// Get the real (pixel) gui coordinates from relative 0..1 coords.

var real_coords;

real_coords[0] = argument0 * objGuiHandler.gui_width;   // x
real_coords[1] = argument1 * objGuiHandler.gui_height;   // y

return real_coords;
