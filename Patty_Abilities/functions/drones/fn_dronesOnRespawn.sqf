params[
	["_man",    nil,[objNull]],
	["_corpse", nil,[objNull]]
];
private _data = _corpse getVariable "PSA_droneOwnerData";
if(isNil "_data")exitWith{};

sleep 3;

private _bombDrone = _corpse getVariable ["PSA_bombDrone",_man getVariable ["PSA_bombDrone",objNull]];
private _drones    = _data get"active_drones";
private _cDrone    = _drones#0;

{_x setVariable ["PSA_droneOwner", _man, true]} forEach _drones;

_man    connectTerminalToUAV objNull;
_corpse connectTerminalToUAV objNull;

_man setVariable ["PSA_droneOwnerData", _data, true];
_man setVariable ["PSA_bombDrone", _bombDrone, true];

[_man] call PSA_fnc_linkDroneTerminal;

if((!isNil "_cDrone")
&&{alive _cDrone})
then{
	_man connectTerminalToUAV (_drones#0);
	[true] remoteExecCall ["showUAVFeed", _man];
};

_man    setVariable ["PSA_detonatePlayerAction", nil, true];
_corpse setVariable ["PSA_detonatePlayerAction", nil, true];
[_man,["PSA_bombDrone", _bombDrone, true]] remoteExecCall ["setVariable",_man];

[_man] remoteExec ["PSA_fnc_updateAcePlayerActions",_man];

true;