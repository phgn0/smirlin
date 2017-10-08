/// scrNormalMode_handleKeypresses()
/// handle normal mode keypresses

if (keyboard_check_pressed(ord("B"))){
    scrModes_changeMode(global_modes.building);
}

if (keyboard_check_pressed(ord("K"))){
    game_save("Save.dat");
}
if (keyboard_check_pressed(ord("L"))){
    game_load("Save.dat");
}
