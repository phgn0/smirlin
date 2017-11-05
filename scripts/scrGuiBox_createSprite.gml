/// scrGuiBox_createSprite(component, x, y, width, height, width_height_scale, sprite)
/// Creates an guibox that represents an sprite.
// The sprite is scaled to fit the provided dimensions.

var box = scrGuiBox_createBasic(argument[0],
        argument[1], argument[2],
        argument[3], argument[4], argument[5]);

box[| guibox.type] = guibox_types.sprite;

box[| guibox.sprite] = argument[6];

// set sprite scale, so that it fits the provided width, height
var root_dimensions = box[| guibox.dimensions_root];

box[| guibox.sprite_scaling] = scrGuiBox_getSpriteScale(
        argument[6], 
        root_dimensions[0], root_dimensions[1]);

return box;
