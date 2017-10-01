/// scrGridViewController_getCurrentCell
/// Get the currently selected grid cell.

var pos = scrPointerController_getPosition();

// get which grid cell the pointer falls into
pos = scrGridViewController_translateCoordsToGrid(pos[0], pos[1]);

return pos;
