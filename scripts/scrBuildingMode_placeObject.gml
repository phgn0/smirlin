/// scrBuildingMode_placeObject()
/// Place the selected object at the current selected location

var cell_pos = scrGridViewController_getCurrentCell();

var building_config = objBuildingMode.buildings_configs[| objBuildingMode.selected_slot];
var building_size = building_config[? "size"];

if (scrGridLogicManager_isLegalPlacement(cell_pos[0], cell_pos[1], 
        building_size[| 0], building_size[| 1])) {
    // we can place building
    
    scrGridLogicManager_createInstance(cell_pos[0], cell_pos[1], 
            building_size[| 0],  building_size[| 1],
            objBuildingMode.buildings_objects[| objBuildingMode.selected_slot]);
} else {
    
}



