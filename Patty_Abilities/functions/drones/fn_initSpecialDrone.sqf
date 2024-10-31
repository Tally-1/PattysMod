params[
    ["_owner", nil,[objNull]],
    ["_drone", nil,[objNull]],
	["_type", nil,     [""]]
];
private _ownerData = _owner getVariable "PSA_droneOwnerData";

[_owner]        call PSA_fnc_linkDroneTerminal;
[_drone, _type] call PSA_fnc_specialDroneEvents;

_drone setUnitTrait ["audibleCoef",    0];
_drone setUnitTrait ["camouflageCoef", 0];
_drone enableWeaponDisassembly false;
_owner connectTerminalToUAV   _drone;

_drone setVariable["PSA_droneType",  _type,  true];
_drone setVariable["PSA_droneOwner", _owner, true]; // Remember to transfer this variable on respawn.
_drone setVariable["PSA_birth",  round time, true];
_drone setVariable["PSA_hidden",       true, true];

if(isNil "_ownerData")
then{ _ownerData = [_owner] call PSA_fnc_initDroneOwnerData};

if(_type isEqualTo "bomb")
then{[_drone, _owner]call PSA_fnc_bombDroneInit};

if(_type isEqualTo "combat")
then{[_drone]spawn PSA_fnc_initCombatDrone};

_ownerData call ["addDrone",[_drone, _type]];

[_drone] remoteExecCall ["PSA_fnc_dronePickupAction"];

true;