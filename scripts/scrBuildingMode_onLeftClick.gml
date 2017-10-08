/// scrBuildingMode_onLeftClick()
/// handles left click in building mode

if (self.selected_building_slot != undefined) {
    scrBuildingMode_placeObject();
} else if (self.street_mode) {
    var cell = scrGridViewController_getCurrentCell();
    scrStreets_addTile(cell[0], cell[1]);
}
