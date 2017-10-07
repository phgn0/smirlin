/// scrStreets_addTile(x, y)
/// Build street on the specified tile

if (scrGridLogicManager_isLegalPlacement(argument0, argument1, 1, 1)) {
    objStreets.street_grid[# argument0, argument1] = true;
    scrGridLogicManager_registerBuilding(argument0, argument1, 1, 1);
}
