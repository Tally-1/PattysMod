PSA_fnc_initSpecialDrone = { 
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
then{[_drone]call PSA_fnc_bombDroneInit};

if(_type isEqualTo "combat")
then{[_drone]remoteExec ["PSA_fnc_initCombatDrone",2]};

_ownerData call ["addDrone",[_drone, _type]];

[_drone] remoteExecCall ["PSA_fnc_dronePickupAction"];

true;
};

PSA_fnc_applyDroneWeapon = { 
params[
    ["_drone",      nil,[objNull]],
    ["_weaponData", nil,     [[]]]
];
[_drone, "SetWeapon",[]] call lxWS_fnc_DroneWeapon;
clearWeaponCargoGlobal _drone;
sleep 0.1;
[_drone, "SetWeapon",_weaponData] call lxWS_fnc_DroneWeapon;

true;
};


PSA_fnc_setDroneWeapon = { 
params[
    ["_drone",    nil,[objNull]],
    ["_weapon",   nil,     [""]],
    ["_magazine", nil,     [""]],
    ["_magCount", nil,      [0]]
];
private _defaultMagazine = (getArray (configfile >> "CfgWeapons" >> _weapon >> "magazines"))#0;
if(isNil "_magazine")then{_magazine = _defaultMagazine};

private _defaultMagCount = getNumber(configfile >> "CfgMagazines" >> _magazine >> "count");
if(isNil "_magCount")then{_magCount = _defaultMagCount};

private _weaponData = [_weapon,"","","",[_magazine,_magCount],[],""];

[_drone, _weaponData] call PSA_fnc_applyDroneWeapon;
// [_drone, "SetWeapon",[]]          remoteExecCall ["lxWS_fnc_DroneWeapon"];
// [_drone, "SetWeapon",_weaponData] remoteExecCall ["lxWS_fnc_DroneWeapon"];
// [_drone, "SetWeapon",_weaponData] call lxWS_fnc_DroneWeapon;

// private _newWeaponVar = _drone getVariable "lxws_holdingweapon";
// _drone setVariable ["lxws_holdingweapon",_newWeaponVar,true];
// ""

[_weapon, [_magazine,_magCount]];
};

PSA_fnc_initCombatDrone = { 
params[
    ["_drone",nil,[objNull]]
];

[
    _drone, 
    PSA_combatDroneGun, 
    PSA_combatDroneMagazine

] call PSA_fnc_setDroneWeapon;

_drone addEventHandler ["Fired", {_this call PSA_fnc_combatDroneFired}];

// removeAllActions _drone;

true;
};



PSA_fnc_deployDrone = { 
params[ 
    ["_owner", nil, [objNull]],
    ["_type",  nil,      [""]]
];
private _pos         = (_owner getVariable "PSA_objectPosDir")#0;
private _dir         = (_owner getVariable "PSA_objectPosDir")#1;
private _droneModel  = [_type] call PSA_fnc_droneTypeToModel;
private _drone       = createVehicle [_droneModel, _pos, [], 0, "CAN_COLLIDE"];
private _droneClient = groupOwner group _owner;

(side _owner) createVehicleCrew _drone;
_drone setOwner _droneClient;
_drone setGroupOwner group _droneClient;

[_drone, true]          call PSA_fnc_secureObjectOnSpawn;
[_owner, _drone, _type] remoteExecCall ["PSA_fnc_initSpecialDrone",_droneClient];

_owner connectTerminalToUAV _drone;

[_owner,_drone] remoteExecCall ["connectTerminalToUAV", _owner];
[true]          remoteExecCall ["showUAVFeed", _owner];
_drone engineOn true;

[["Drone deployed by machine ", clientOwner, " on behalf of machine ",_droneClient]]call p_dbg;

true;
};

// PSA_fnc_specialDroneDestroyed = {};
PSA_fnc_deployDrone    = { 
params[ 
    ["_owner", nil, [objNull]],
    ["_type",  nil,      [""]]
];
private _pos         = (_owner getVariable "PSA_objectPosDir")#0;
private _dir         = (_owner getVariable "PSA_objectPosDir")#1;
private _droneModel  = [_type] call PSA_fnc_droneTypeToModel;
private _drone       = createVehicle [_droneModel, _pos, [], 0, "CAN_COLLIDE"];
private _droneClient = groupOwner group _owner;
(side _owner) createVehicleCrew _drone;

[_drone, true]          call PSA_fnc_secureObjectOnSpawn;
[_owner, _drone, _type] remoteExecCall ["PSA_fnc_initSpecialDrone",_droneClient];
[true] remoteExecCall ["showUAVFeed", _owner];

_drone engineOn true;

[["Drone deployed by machine ", clientOwner, " on behalf of machine ",_droneClient]]call p_dbg;

true;
};








PSA_fnc_droneTypeToModel = { 
params[
	["_type",nil,[""]]
];

if(_type isEqualTo "recon")  exitWith{"B_UAV_01_F"};
if(_type isEqualTo "combat") exitWith{"B_UAV_02_lxWS"};
if(_type isEqualTo "bomb")   exitWith{"B_UAV_06_F"};

nil;
};