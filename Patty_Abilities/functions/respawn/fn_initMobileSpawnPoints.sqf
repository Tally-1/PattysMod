private _dataArr = [
	["updateAll",    {_self spawn PSA_fnc_updateAllMRSPs}],
	["deactivateAll",          PSA_fnc_deactivateAllMRSPs],
	["getOwners",                   PSA_fnc_getMRSPowners],
	["all",                                            []]
];

PSA_mobileSpawnPoints = createHashmapObject[_dataArr];

true;