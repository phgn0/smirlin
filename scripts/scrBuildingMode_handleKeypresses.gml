/// scrBuildingMode_handleKeypresses()
/// handle keypresses in building mode

if (keyboard_check(ord("B"))){
    scrModes_changeMode(global_modes.normal);
}

// select objects
if (keyboard_check(ord("1"))){
    objBuildingMode.selected_object = objBuilding_1;
} else if (keyboard_check(ord("2"))){
    objBuildingMode.selected_object = objBuilding_2;
}
