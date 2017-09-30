/// onWheel(boolean is_up)
/// handle mouse wheel action

var is_up = argument[0];

var zoom;
if(is_up){
    // wheel down -> zoom in
    zoom = CAMERA_ZOOM_STEP;
} else {
    // wheel up -> zoom out
    zoom = -CAMERA_ZOOM_STEP;
}

scrCameraController_zoomIn(zoom);

