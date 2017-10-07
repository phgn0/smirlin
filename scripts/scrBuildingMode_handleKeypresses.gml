/// scrBuildingMode_handleKeypresses()
/// handle keypresses in building mode

if (keyboard_check_pressed(ord("B"))){
    scrModes_changeMode(global_modes.normal);
}

// select objects
if (keyboard_check_pressed(ord("1"))){
    scrBuildingMode_select(1);
} else if (keyboard_check_pressed(ord("2"))){
    scrBuildingMode_select(2);
} else if (keyboard_check_pressed(ord("3"))){
    scrBuildingMode_select(3);
} else if (keyboard_check_pressed(ord("4"))){
    scrBuildingMode_select(4);
} else if (keyboard_check_pressed(ord("5"))){
    scrBuildingMode_select(5);
} else if (keyboard_check_pressed(ord("6"))){
    scrBuildingMode_select(6);
} else if (keyboard_check_pressed(ord("7"))){
    scrBuildingMode_select(7);
}

//objBuildingMode.selected_requirements = scrBuildings_getRequirements(objBuildingMode.selected_object);
//show_message(objBuildingMode.selected_requirements);
