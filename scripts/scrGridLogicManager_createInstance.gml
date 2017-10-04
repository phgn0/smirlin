/// scrGridLogicManager_createInstance(grid_x, grid_y, obj)
/// Instanciate and register an object at the specified grid coordinates.

// x, y grid coords where to start the building (one tile)
var grid_x = argument[0];   
var grid_y = argument[1];

var obj = argument[2];  // object to place

if (scrGridLogicManager_isLegalPlacement(grid_x, grid_y, obj)) {   
    // instanciate the object and draw it at the right position
    var inst = scrGridViewController_createInstance(grid_x, grid_y, obj);

    scrGridLogicManager_registerBuilding(grid_x, grid_y, obj);

    return inst;
} else {
    // illegal placement

    return undefined;
}
