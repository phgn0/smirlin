/// scrNormalmode_onLeft(is_released)
/// handles the left mouse button pressed and released event (depending on is_released)

var is_released = argument[0];

if (!is_released) {
    // pressed event
    scrCameraController_startDragging();
} else {
    // released event
    
    scrCameraController_stopDragging();
}

