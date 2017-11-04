/// scrGuiBox_createRectangle(component, x, y, width, height, color)
/// Creates an guibox that represents an reactangle.

var box = scrGuiBox_createBasic(argument[0],
        argument[1], argument[2],
        argument[3], argument[4]);

box[| guibox.type] = guibox_types.rectangle;

box[| guibox.color] = argument[5];

return box;
