params[
	["_man",nil,[objNull]]
];
private _module  = [_man] call PSA_fnc_spawnMRSPModule;
private _dataArr = [
	["owner",                                      _man],
	["module",                                  _module],
	["lastUpdate",                                 time],
	["timeSinceUpdate", {time-(_self get "lastUpdate")}],
	["update",                       PSA_fnc_updateMRSP],
	["deactivate",               PSA_fnc_deactivateMRSP],
	["activate",                   PSA_fnc_activateMRSP],
	["delete",                       PSA_fnc_deleteMRSP],
	["#create",           {"MRS initialized"call P_dbg}],
	["#delete",               {"MRS deleted"call P_dbg}]
];

private _map = createHashmapObject [_dataArr];

_module setVariable ["PSA_mobileRespawnData", _map, true];
_man    setVariable ["PSA_mobileRespawnData", _map, true];

(PSA_mobileSpawnPoints get"all")pushBack _map;


_map;