/// scrViewController_draggingStep(new_x, new_y)
/// dragging stepe event handler
// has to be called from used InputController step event to pass the correct coordinates

var new_x = argument[0];
var new_y = argument[1];

// https://yal.cc/gamemaker-click-n-drag-to-pan-view/
view_xview[0] = view_xview[0] + objViewController.drag_x - new_x
view_yview[0] = view_yview[0] + objViewController.drag_y - new_y

