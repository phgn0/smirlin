/// scrBuildingMode_onLeftClick()
/// handles left click in building mode

if (self.streets) {
    var cell = scrGridViewController_getCurrentCell();
    scrStreets_addTile(cell[0], cell[1]);
} else if (self.selected_slot != undefined) {
    scrBuildingMode_placeObject();
}
