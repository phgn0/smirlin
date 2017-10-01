/// scrObjectPlacer_place()
/// Place the object and end ObjectPlacing

var cell_pos = scrObjectPlacer_getCurrentCell();

scrGridLogicManager_createInstance(cell_pos[0], cell_pos[1], objObjectPlacer.object);

scrObjectPlacer_stop();
