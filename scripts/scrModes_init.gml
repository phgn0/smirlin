/// scrModes_init()
/// inits global mode variables and sets initial mode

// A mode is an object that handles a particular game state (for example input
// at that state). Its extends an parent mode. 

enum global_modes {
    normal,   // normal city view
    building,
    menu    // main menu
}

// map mode name to corresponding object
global.mode_objects = ds_map_create();
global.mode_objects[? global_modes.normal] = objNormalMode;
global.mode_objects[? global_modes.building] = objBuildingMode;

// init first state
global.mode_instance = undefined;
scrModes_changeMode(global_modes.normal);

