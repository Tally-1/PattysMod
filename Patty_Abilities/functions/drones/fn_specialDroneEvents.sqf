params[
    ["_drone", nil,[objNull]],
	["_type", nil,     [""]]
];

_drone addEventHandler ["Deleted", {_this call PSA_fnc_specialDroneDeleted}];
_drone addEventHandler ["Fuel",    {_this call PSA_fnc_specialDroneFuel}];
_drone addEventHandler ["Killed",  {_this call PSA_fnc_specialDroneDestroyed}];

true;