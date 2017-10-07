/// scrBuildingConfigReader_getAll()
/// Reads in all external config files and store them globally

var config_folder = working_directory + "\external_config\";

var config = ds_map_create();

// get all directories
var directories = ds_list_create();
var directory = file_find_first(config_folder + "*", fa_directory);

while (directory != "") {
    ds_list_add(directories, directory);
    
    directory = file_find_next();
}

file_find_close();

// loop over dirs (we can only do one search at a time)
for (i = 0; i < ds_list_size(directories); i++) {
    var dir = directories[| i];
    var path = config_folder + dir + "\";
    
    // save all files in this directory to config subobject 
    var files_map = ds_map_create();
    
    // list of all files in directory to easily get all configs later
    var files_list = ds_list_create();

    // i don't fucking know why it works only with fa_directory
    var file = file_find_first(path + "*.json", fa_directory);
    
    while (file != "") {
        // cut out ".json"
        var file_base_name = string_copy(file, 0, string_length(file) - 5);
        
        // interpret json as ds_map
        var file_map = json_decode(scrExternalConfig_readFile(path + file));    
        
        // save interpreted json (ds_map) under the filename to directory map
        files_map[? file_base_name] = file_map;
        
        ds_list_add(files_list, file_base_name);
        file = file_find_next();
    }
    
    files_map[? "directory_keys"] = files_list;
    
    // save map of all dir files to config
    config[? dir] = files_map;
}

file_find_close();

global.external_config = config;

scrExternalConfig_hooks();
