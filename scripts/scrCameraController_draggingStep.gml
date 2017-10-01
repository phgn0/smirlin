/// scrCameraController_draggingStep()
/// dragging step event handler 

var new_pos = scrPointerController_getPosition();

// https://yal.cc/gamemaker-click-n-drag-to-pan-view/

view_xview[0] = view_xview[0] + objCameraController.drag_x - new_pos[0];
view_yview[0] = view_yview[0] + objCameraController.drag_y - new_pos[1];

