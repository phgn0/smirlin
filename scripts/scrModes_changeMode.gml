/// scrModes_changeMode(new_mode)
/// change global mode to new mode

var new_mode = argument[0];

// leave old mode
with (global.mode_instance) {
    instance_destroy();
}

// set new mode
global.mode = new_mode;
global.mode_instance = instance_create(0, 0, global.mode_objects[? new_mode]);
