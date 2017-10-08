/// scrBuildings_linkConfigToObjects()
/// Store a reference to the corresponding object to each buildings external config

var buildings_config = global.external_config[? "buildings"];
var keys = buildings_config[? "directory_keys"];
var size = ds_list_size(keys);

for (var i = 0; i < size; i++) {
    var building_config = buildings_config[? keys[| i]];
    
    building_config[? "object"] = scrBuildings_getObject(keys[| i]);
}
