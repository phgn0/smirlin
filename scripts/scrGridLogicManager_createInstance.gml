/// scrGridLogicManager_createInstance(grid_x, grid_y, building_size_x, building_size_y, obj): instance
/// Instanciate and register an object at the specified grid coordinates.

// x, y grid coords where to start the building (one tile)
var grid_x = argument[0];   
var grid_y = argument[1];

var building_size_x = argument[2];
var building_size_y = argument[3];
var obj = argument[4];  // object to place

// instanciate the object and draw it at the right position
var inst = scrGridViewController_createInstance(grid_x, grid_y, obj);

scrGridLogicManager_registerBuilding(grid_x, grid_y, 
        building_size_x, building_size_y);

return inst;
