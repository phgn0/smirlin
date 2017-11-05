// spawn building at random location
var pos_x = irandom(MAP_GRID_SIZE);
var pos_y = irandom(MAP_GRID_SIZE);

// get building from external_config
var buildings_config = global.external_config[? "buildings"];
var building_config = buildings_config[? "SmallHouse"];

var building_obj = building_config[? "object"];
var building_size = building_config[? "size"];

if (scrGridLogicManager_isLegalPlacement(pos_x, pos_y, 
        building_size[| 0], building_size[| 1])) {
    // create at grid cell
    scrGridLogicManager_createInstance(
            pos_x, pos_y, 
            building_size[| 0], building_size[|1],
            building_obj);       
}

// call this again
delay(scrBasicCityManager_spawBuilding, irandom(4) + 1);
