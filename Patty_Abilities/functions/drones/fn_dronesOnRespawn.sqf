params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
private _data = _corpse getVariable "PSA_droneOwnerData";
if(isNil "_data")exitWith{};

sleep 3;

private _drones = _data get"active_drones";
private _cDrone = _drones#0;

{_x setVariable ["PSA_droneOwner", _man, true]} forEach _drones;

_man    connectTerminalToUAV objNull;
_corpse connectTerminalToUAV objNull;

_man setVariable ["PSA_droneOwnerData", _data, true];
[_man] call PSA_fnc_linkDroneTerminal;

if((!isNil "_cDrone")
&&{alive _cDrone})
then{
	_man connectTerminalToUAV (_drones#0);
	[true] remoteExecCall ["showUAVFeed", _man];
};

true;