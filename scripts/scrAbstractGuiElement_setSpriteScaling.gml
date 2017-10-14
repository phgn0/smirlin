/// scrAbstractGuiElement_setSpriteScaling(inst)
/// Sets the sprite scaling so that it will be drawn to the gui element
///   dimensions.

with(argument0) {
    sprite_scaling_x = width / sprite_get_width(sprite);
    sprite_scaling_y = height / sprite_get_height(sprite);
}
