params[
    ["_drone", nil,[objNull]],
	["_type", nil,     [""]]
];

_drone addEventHandler ["Deleted", {_this call PSA_fnc_specialDroneDeleted}];
_drone addEventHandler ["Fuel",    {_this call PSA_fnc_specialDroneFuel}];
_drone addEventHandler ["Killed",  { 
	params[["_drone",nil,[objNull]]];
	private _owner = _drone getVariable "PSA_droneOwner";
	[_drone] remoteExecCall ["PSA_fnc_specialDroneDestroyed", _owner];
}];

true;