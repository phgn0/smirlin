/// scrGridViewController_drawSprite(grid_x, grid_y, sprite, [sprite_frame], [scale])
/// draws an sprite (for 1 frame) at the specified grid position

// CAUTION CALCULATES REAL POSITION EVERY TIME -> EXPENSIVE
// should be called from an draw event

var grid_x = argument[0];
var grid_y = argument[1];
var sprite = argument[2];

if (argument_count < 4) {
    var sprite_frame = 0;
} else {
    var sprite_frame = argument[3];
}

if (argument_count < 5) {
    var scale = 1;
} else {
    var scale = argument[4];
}

var abstract_coords = scrGridViewController_gridToAbstractCoords(grid_x, grid_y);
var real_pos = scrViewController_transformCoords(true, abstract_coords[0], abstract_coords[1]);

draw_sprite_ext(sprite, sprite_frame, real_pos[0], real_pos[1], scale, scale, 0, c_white, 1);
