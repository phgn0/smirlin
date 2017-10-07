/// scrBuildings_getConfig(building_obj)
/// get the config from an building object

// "objBuilding_KEY"
var name = object_get_name(argument0);
var keyname = string_copy(name, 13, string_length(name) - 12);

var buildings_map = global.external_config[? "buildings"];

return buildings_map[? keyname];
