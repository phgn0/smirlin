/// scrBuildingMode_placeObject()
/// Place the selected object at the current selected location

var cell_pos = scrGridViewController_getCurrentCell()

scrGridLogicManager_createInstance(cell_pos[0], cell_pos[1], objBuildingMode.selected_object);

