/// scrBuildingMode_unselectBuilding()
/// Do cleanup after a building is no longer selected

if (not is_undefined(objBuildingMode.selected_building_slot)) {
    instance_destroy(objBuildingMode.preview_instance);
}
