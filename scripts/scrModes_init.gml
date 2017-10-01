/// scrModes_init()
/// inits global mode variables and sets initial mode

enum global_modes {
    normal,   // normal city view
    building,
    menu    // main menu
}

global.current_mode = global_modes.normal;

