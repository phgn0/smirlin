/// scrBuildingMode_placeObject()
/// Place the selected object at the current selected location

var cell_pos = scrGridViewController_getCurrentCell();

var building_config = objBuildingMode.buildings_configs[| 
        objBuildingMode.selected_building_slot];
var building_size = building_config[? "size"];
var object = building_config[? "object"];

if (scrGridLogicManager_isLegalPlacement(cell_pos[0], cell_pos[1], 
        building_size[| 0], building_size[| 1])) {
    // we can place building
    
    scrGridLogicManager_createInstance(cell_pos[0], cell_pos[1], 
            building_size[| 0],  building_size[| 1], object);
} else {
    
}



