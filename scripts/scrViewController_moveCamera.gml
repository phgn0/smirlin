/// scrViewController_moveCamera(x, y)
/// Moves the camera relative to its current poisition.

var diff_x = argument[0];
var diff_y = argument[1];

view_xview[0] += diff_x;
view_yview[0] += diff_y;
