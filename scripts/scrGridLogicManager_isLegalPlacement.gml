/// scrGridLogicManager_isLegalPlacement(x, y, obj_building): placement_possible
/// Checks if the building placement is possible on the given coords.

if (not objGridLogicManager.cell_occupied[argument[0], argument[1]]) {
    return true;
} else {
    return false;
}
