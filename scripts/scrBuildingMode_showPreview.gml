/// scrBuildingMode_showPreview(show_it)
/// Turn the building preview on or off

if (argument0) {
    // turn on
    if (not objBuildingMode.show_preview) {
        objBuildingMode.show_preview = true;
        instance_activate_object(objBuildingMode.preview_instance);
    }
} else {
    // turn off
    if (objBuildingMode.show_preview) {
        objBuildingMode.show_preview = false;
        instance_deactivate_object(objBuildingMode.preview_instance);
    }
}
