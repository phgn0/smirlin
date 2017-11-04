/// scrGuiBox_createBasic(component, x, y, width, height)
/// Creates an basic guibox (called by each special type)

var box = ds_list_create();

box[| guibox.component] = argument0;

// calculate root component equivalents
box[| guibox.pos_root] = scrGuiComponent_toRootCoords(argument0, 
        argument1, argument2);
box[| guibox.dimensions_root] = scrGuiComponent_toRootDimensions(argument0, 
        argument3, argument4);

return box;
