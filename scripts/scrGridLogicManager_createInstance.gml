/// scrGridLogicManager_createInstance(grid_x, grid_y, obj)
/// Instanciate an object at the specified grid coordinates.

// x, y grid coords where to start the building (one tile)
var grid_x = argument[0];   
var grid_y = argument[0];

var obj = argument[0];  // object to place

// check if tiles are free
//TODO

// instanciate the object and draw it at the right position
var inst = scrGridViewController_createInstance(grid_x, grid_y, obj);

return inst;