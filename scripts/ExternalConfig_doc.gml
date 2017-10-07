/// ExternalConfig_doc
/// Framework for GameMaker external config files (json)

// To make often changed configuration (buildings cost, ...) 
//   easier you can offload it to individual json files

// SET UP
// Create individual json config files in 
//   projectdir/datafiles/external_config/your_subdirectory
// In gm create a group of Included Files/external_config named like your subdirectory
// Import your json files to the created group (drag&drop works)
// This framework maps them in game to the global.external_config map

// USAGE
// Get a map of all your files by accessing global.external_config with your 
//   subdirectory name as key
// Get an map of an individual config file by accessing the above map with the file name 
//   (without ".json") as key
// Access attributes of that file through the above map

// hopefully spend less time than writing it in gml code (+ the time i took to write this)
