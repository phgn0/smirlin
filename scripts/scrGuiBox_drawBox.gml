#define scrGuiBox_drawBox
/// scrGuiBox_drawBox(box)
/// Draw the element that the box represents.

// using tab scripts here (propably first and last time)

switch(argument0[| guibox.type]) {
    case guibox_types.rectangle:
        scrGuiBox_drawBox_rectangle(argument0);
        break;
    case guibox_types.sprite:
        scrGuiBox_drawBox_sprite(argument0);
}

#define scrGuiBox_drawBox_rectangle
var pos = argument0[| guibox.pos_root];
var dimensions = argument0[| guibox.dimensions_root];
var my_color = argument0[| guibox.color];

draw_rectangle_colour(pos[0], pos[1],                   // pos
        pos[0] + dimensions[0], pos[1] + dimensions[1], // width, height
        my_color, my_color, my_color, my_color, false); // colors

#define scrGuiBox_drawBox_sprite
var pos = argument0[| guibox.pos_root];
var my_sprite = argument0[| guibox.sprite];
var sprite_scale = argument0[| guibox.sprite_scaling];

draw_sprite_ext(my_sprite, 0, pos[0], pos[1], 
        sprite_scale[0], sprite_scale[1],
        0, c_white, 1);
