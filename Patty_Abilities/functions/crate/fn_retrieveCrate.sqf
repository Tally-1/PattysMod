params[
	["_crate", nil,[objNull]]	
];
private _crateData = _crate getVariable "PSA_crateData";
private _owner     = _crateData get "owner";
_crateData set  ["retrieved",     true];
_crateData call ["globalizeData", true];

[["click", 1, 1]] remoteExecCall ["playSoundUI", _owner];

deleteVehicle _crate;