/// Buildings_doc
/// How to use the buildings framework / how to add new buildings

// Create new object in gm Objects/Elements/Buildings/
// Set appropriate name for the object (objBuilding_YOURNAME)
//   this is not the name that shows up in game, just how to refer to it in code
// Set objAbstractBuilding as parent of the new object

// Create new sprite for the building in gm Sprites/Elements/Buildings
// Set a appropriate name for the sprite (sprBuilding_YOURNAME)
// Add created sprite to object

// Create a JSON file for the building in 
//   project_dir/datafiles/external_config/buildings/
// Name it the name you gave the object earlier (YOURNAME.json)
// Set attributes for the building there (name, description, 
//   requirements to build)
// Refer to attributes.txt for possible attributes of the buildings

// the game will find that config file and the building will show up in the building mode
// (hopefully)
