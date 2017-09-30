/// scrCameraController_draggingStep(new_x, new_y)
/// dragging step event handler

// has to be called from used InputController step event to pass the correct pointer 
// coordinates

var new_x = argument[0];
var new_y = argument[1];

// https://yal.cc/gamemaker-click-n-drag-to-pan-view/
view_xview[0] = view_xview[0] + objCameraController.drag_x - new_x
view_yview[0] = view_yview[0] + objCameraController.drag_y - new_y

