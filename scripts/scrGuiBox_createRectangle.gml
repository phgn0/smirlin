/// scrGuiBox_createRectangle(component, x, y, width, height, width_height_scale, color)
/// Creates an guibox that represents an reactangle.

var box = scrGuiBox_createBasic(argument[0],
        argument[1], argument[2],
        argument[3], argument[4], argument[5]);

box[| guibox.type] = guibox_types.rectangle;

box[| guibox.color] = argument[6];

return box;
