/// scrBuildingMode_selectBuilding(index)
/// select an object from the buildings list

scrBuildingMode_unselectBuilding()

objBuildingMode.street_mode = false;

if (argument0 < objBuildingMode.buildings_configs) {
    // valid selection
    objBuildingMode.selected_building_slot = argument0 - 1;
    var config = objBuildingMode.buildings_configs[| 
                    objBuildingMode.selected_building_slot];
    var size = config[? "size"];    
    
    var pos = scrGridViewController_getCurrentCell();
    
    // create new preview instance
    objBuildingMode.preview_instance = scrGridViewController_createInstance(
            pos[0], pos[1], objBuildingMode_preview);
    objBuildingMode.show_preview = true;
    
    if (not scrGridLogicManager_isLegalPlacement(pos[0], pos[1],
                    size[| 0], size[| 1])) {
        // deactivate preview if illegal placement
        scrBuildingMode_showPreview(false);
    }
           
    // set values
    objBuildingMode.preview_instance.grid_position = pos;
    objBuildingMode.preview_instance.sprite = object_get_sprite(config[? "object"]);
    
    // scale correctly
    scrAbstractBuilding_scale(objBuildingMode.preview_instance, 
            sprite_get_width(objBuildingMode.preview_instance.sprite),
            size[| 0], size[| 1]);
}
