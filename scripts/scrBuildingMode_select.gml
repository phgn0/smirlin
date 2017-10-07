/// scrBuildingMode_select(index)
/// select an object from the buildings list

if (argument0 < objBuildingMode.buildings_configs) {
    objBuildingMode.selected_slot = argument0 - 1;
}
