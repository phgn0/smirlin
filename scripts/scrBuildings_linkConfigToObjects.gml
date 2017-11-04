/// scrBuildings_linkConfigToObjects()
/// Store a reference to the corresponding object to each buildings external config

var buildings_config = global.external_config[? "buildings"];
var keys = buildings_config[? "directory_keys"];
var size = ds_list_size(keys);

var valid_keys = ds_list_create();

for (var i = 0; i < size; i++) {
    var key = keys[| i];
    var building_config = buildings_config[? key];
    log_test(i, key);
    var object = scrBuildings_getObject(key);
    if(object == -1) {
        // no corresponding object
        log("Buildings Framework", // long debug message
                "external_config building '" + key + "' has no corresponding gamemaker object (should me named 'objBuilding_" + key + "')", importance_level.info);
        
        // delete invalid config
        ds_map_delete(buildings_config, key);
    } else {
        building_config[? "object"] = object;
        ds_list_add(valid_keys, key);
    }
}

buildings_config[? "directory_keys"] = valid_keys;
