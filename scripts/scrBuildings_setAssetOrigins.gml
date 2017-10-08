/// scrBuildings_setAssetOrigins()
/// sets the correct draw offset for assets based on external config sizes

var buildings_config = global.external_config[? "buildings"];
var keys = buildings_config[? "directory_keys"];
var size = ds_list_size(keys)

for (var i = 0; i < size; i++) {
    var building_config = buildings_config[? keys[| i]];
    var building_size = building_config[? "size"];
    
    var sprite = object_get_sprite(building_config[? "object"]);
    
    sprite_set_offset(sprite, 0, scrGridViewController_calcSpriteOrigin(
            sprite_get_width(sprite), sprite_get_height(sprite),
            building_size[| 0], building_size[| 1]));
}
