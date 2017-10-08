/// scrBuildingMode_selectBuilding(index)
/// select an object from the buildings list

objBuildingMode.street_mode = false;

if (argument0 < objBuildingMode.buildings_configs) {
    // valid selection
    objBuildingMode.selected_building_slot = argument0 - 1;
    var config = objBuildingMode.buildings_configs[| 
                    objBuildingMode.selected_building_slot];
    
    if (not is_undefined(objBuildingMode.preview_instance)) {
        // destroy old instance
        instance_destroy(objBuildingMode.preview_instance);
    }
    
    var pos = scrGridViewController_getCurrentCell();
    
    // create new preview instance
    var inst = scrGridViewController_createInstance(
            pos[0], pos[1], objBuildingMode_preview);
            
    // set values
    inst.grid_position = pos;
    inst.sprite = object_get_sprite(config[? "object"]);
    
    var size = config[? "size"];    
    // scale correctly
    scrAbstractBuilding_scale(inst, sprite_get_width(inst.sprite),
            size[| 0], size[| 1]);
            
    objBuildingMode.preview_instance = inst;
}
