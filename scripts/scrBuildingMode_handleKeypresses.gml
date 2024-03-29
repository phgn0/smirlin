/// scrBuildingMode_handleKeypresses()
/// handle keypresses in building mode

// general hotkeys
if (keyboard_check_pressed(ord("B"))){
    scrBuildingMode_unselectBuilding();
    scrModes_changeMode(global_modes.normal);
} else {
    // select buildings
        
    if (keyboard_check_pressed(ord("0"))){  
        scrBuildingMode_unselectBuilding()
        objBuildingMode.selected_building_slot = undefined;
        objBuildingMode.street_mode = true;  
    } else if (keyboard_check_pressed(ord("1"))){
        scrBuildingMode_selectBuilding(1);
    } else if (keyboard_check_pressed(ord("2"))){
        scrBuildingMode_selectBuilding(2);
    } else if (keyboard_check_pressed(ord("3"))){
        scrBuildingMode_selectBuilding(3);
    } else if (keyboard_check_pressed(ord("4"))){
        scrBuildingMode_selectBuilding(4);
    } else if (keyboard_check_pressed(ord("5"))){
        scrBuildingMode_selectBuilding(5);
    } else if (keyboard_check_pressed(ord("6"))){
        scrBuildingMode_selectBuilding(6);
    } else if (keyboard_check_pressed(ord("7"))){
        scrBuildingMode_selectBuilding(7);
    }
}
