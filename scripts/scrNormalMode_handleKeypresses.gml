/// scrNormalMode_handleKeypresses()
/// handle normal mode keypresses

if (keyboard_check_pressed(ord("B"))){
    scrModes_changeMode(global_modes.building);
}

