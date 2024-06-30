// This function is run on the server, so any local-code must be remote executed.
params[
	["_crate", nil,[objNull]]	
];
private _crateData = _crate getVariable "PSA_crateData";
private _owner     = _crateData get "owner";
_crateData set  ["retrieved",     true];
_crateData call ["globalizeData", true];

[_owner, false] remoteExec ["PSA_fnc_cratePlacementEffects", _owner];
