/// scrGridController_drawGrid()
/// draws helping lines to visualize the grid 

// (has to be done every frame)

draw_set_colour(grid_colour);

var line_length = grid_length * GRID_WIDTH;
var offset = 0;     // offset to 0,0

// abstract 2d coords
for (var i = 0; i < grid_length; i++) {
    // x axis
    var origin = scrViewController_transformCoords(true, offset, 0);
    var dest = scrViewController_transformCoords(true, offset, line_length);
    draw_line_width(origin[0], origin[1], dest[0], dest[1], grid_line_width);
    
    // y axis
    var origin = scrViewController_transformCoords(true, 0, offset);
    var dest = scrViewController_transformCoords(true, line_length, offset);
    draw_line_width(origin[0], origin[1], dest[0], dest[1], grid_line_width);
    
    offset += GRID_WIDTH;
}
