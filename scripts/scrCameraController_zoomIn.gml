/// scrCameraController_zoomIn(fraction)
/// Zooms the camera in by a fraction of the current size (or out if negative fraction).

var fraction = argument[0];

var x_diff = fraction * view_wview[0];
var y_diff = fraction * view_hview[0];

// reduce view window size
view_wview[0] -= x_diff;
view_hview[0] -= y_diff;

// move view window so we zoom to the middle
view_xview[0] += x_diff / 2;
view_yview[0] += y_diff / 2;


