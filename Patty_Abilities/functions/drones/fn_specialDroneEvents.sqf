params[
    ["_drone", nil,[objNull]],
	["_type", nil,     [""]]
];

[_drone,["Deleted", {_this call PSA_fnc_specialDroneDeleted}]]  remoteExecCall ["addEventHandler",[clientOwner, 2]];
[_drone,["Fuel", {_this call PSA_fnc_specialDroneFuel}]]        remoteExecCall ["addEventHandler",[clientOwner, 2]];
[_drone,["Killed", {_this call PSA_fnc_specialDroneDestroyed}]] remoteExecCall ["addEventHandler",[clientOwner, 2]];

true;