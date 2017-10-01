/// scrCameraController_startDragging()
/// starts dragging the camera with the pointer

// will call scrPointerController_getPosition

if (objCameraController.dragging_possible) {
    objCameraController.dragging = true;

    var pos = scrPointerController_getPosition();

    objCameraController.drag_x = pos[0];
    objCameraController.drag_y = pos[1];
}
