/// scrMouseController_onLeft(is_released)
/// handles the left mouse button pressed and released event (depending on is_released)

var is_released = argument[0];

if (!is_released) {
    // pressed event
    
    if (global.current_mode == global_modes.normal) {
        scrCameraController_startDragging();
    } else if (global.current_mode == global_modes.building) {
        scrObjectPlacer_place();
        global.current_mode = global_modes.normal;
    }
    
} else {
    // released event
    
    if (global.current_mode == global_modes.normal) {
        scrCameraController_stopDragging();
    }
}

