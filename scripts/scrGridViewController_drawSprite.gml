/// scrGridViewController_drawSprite(grid_x, grid_y, sprite)
/// draws an sprite (for 1 frame) at the specified grid position

// should be called from an draw event

var grid_x = argument[0];
var grid_y = argument[1];
var sprite = argument[2];

var abstract_coords = scrGridViewController_gridToAbstractCoords(grid_x, grid_y);
var real_pos = scrViewController_transformCoords(true, abstract_coords[0], abstract_coords[1]);

draw_sprite(sprite, 0, real_pos[0], real_pos[1]);
