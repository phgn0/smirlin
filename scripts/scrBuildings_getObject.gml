/// scrBuildings_getObject(keyname)
/// get the config from an building object

// "objBuilding_KEY"
var index = asset_get_index("objBuilding_" + argument0);

if(index == -1) {
    show_message("object 'objBuilding_" + argument0 + "' does not exist");
}

return index;
