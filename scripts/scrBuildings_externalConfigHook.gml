/// scrBuildings_externalConfigHook()
/// Do tasks after importing external config

// correlate buildings external config to objects
scrBuildings_linkConfigToObjects();

// set correct building sprite offsets for drawing them in iso grid
scrBuildings_setAssetOrigins();
