/// scrCameraController_moveCameraAdjusted(camera_movement direction)
/// Moves the camera a standard amount, adjusted by zoom level

var mydirection = argument[0];

// convert direction to x, y standard percentage
var x_fraction = 0;
var y_fraction = 0;
switch(mydirection) {
    case camera_movement.up:
        y_fraction = -CAMERA_STANDARD_MOVE_FRACTION;
        break;
    case camera_movement.down:
        y_fraction = CAMERA_STANDARD_MOVE_FRACTION;
        break;
    case camera_movement.left:
        x_fraction = -CAMERA_STANDARD_MOVE_FRACTION;
        break;
    case camera_movement.right:
        x_fraction = CAMERA_STANDARD_MOVE_FRACTION;
        break;
}

// move dependent on zoom level
scrCameraController_moveCamera(x_fraction * view_wview[0], y_fraction * view_hview[0])
