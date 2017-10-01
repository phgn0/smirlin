/// scrObjectPlacer_start(obj)
/// Starts placing the object.

var obj = argument[0];

// create handler object (for lifecycle methods)
instance_create(0, 0, objObjectPlacer);

// save object to place
objObjectPlacer.object = obj;

