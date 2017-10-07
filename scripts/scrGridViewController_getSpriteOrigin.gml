/// scrGridViewController_getSpriteOrigin(sprite_width, sprite_height, size_x, size_y): y_origin
/// Calculate the position to draw a sprite from on the grid (leftmost edge)

// what is the width of one tile in the asset
var tile_asset_width = argument0 / ((argument2 + argument3 - 2) * 0.5 + 1); 

// calculate height of one asset tile
var tile_asset_height = tile_asset_width / ISOMETRIC_WIDTH_SCALING;

show_debug_message(argument1 - tile_asset_height * argument2);

return argument1 - tile_asset_height * argument2;
