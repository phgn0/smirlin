/// scrBuildings_getObject(keyname)
/// get the config from an building object

// "objBuilding_KEY"
var index = asset_get_index("objBuilding_" + argument0);

if(index == -1) {
    log("Buildings Framework", 
            "external_config building '" + argument0 + "' has no corresponding gamemaker object (should me named 'objBuilding_" + argument0 + "')", importance_level.info);
}

return index;
