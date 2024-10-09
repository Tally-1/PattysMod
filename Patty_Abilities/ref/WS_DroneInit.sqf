{
params ["_uav","_mode","_args"];



call {
private _UAVName = getText (configOf _uav >> "displayName");

if (_mode == "Init") exitWith {/*{"ref\Ws_initOnlyDrone.sqf"}*/};

if (_mode == "SetWeapon") exitWith {

private _weapon = _args;

if (count (_uav getVariable ["lxws_holdingWeapon",[]]) != 0) then {	

private _weapon = _uav getVariable ["lxws_holdingWeapon",[]];
private _mag1 = _weapon#4;
private _mag2 = _weapon#5;

[_uav,[_weapon#0,[0]]] remoteExecCall ["removeWeaponTurret",_uav];
{
if (count _x != 0) then {
[_uav,[_x#0,[0]]] remoteExecCall ["removeMagazineTurret"];
};
} forEach [_mag1,_mag2];
};
clearWeaponCargoGlobal _uav;

if (count _weapon != 0) then {	
private _mag1 = _weapon#4;
private _mag2 = _weapon#5;


private _weaponCargo = [
_weapon#0,
"",
"",
"",
_weapon#4,
_weapon#5,
""
];
_uav addWeaponWithAttachmentsCargoGlobal [_weaponCargo,1];

{
if (count _x != 0) then {
[_uav,[_x#0,[0],_x#1]] remoteExecCall ["addMagazineTurret"];
[_uav,[
_uav getVariable [["lxws_reloadAction","lxws_reloadAction2"]#_forEachIndex,-1],
format [localize "STR_LXWS_UAV_Reload",getText (configFile >> "CfgMagazines" >> _x#0 >> "displayName")],
format [localize "STR_LXWS_UAV_Reload",getText (configFile >> "CfgMagazines" >> _x#0 >> "displayName")]
]] remoteExecCall ["setUserActionText"];	
};
} forEach [_mag1,_mag2];
[_uav,[_weapon#0,[0]]] remoteExecCall ["addWeaponTurret"];


_uav selectWeaponTurret [_weapon#0,[0]];






























_uav setVariable ["lxws_holdingWeapon",_weapon,true];









} else {	
_uav setVariable ["lxws_holdingWeapon",[],true];

};
};


if (_mode == "SetWeaponInit") exitWith {		
_args params ["_weapon","_mag1","_mag2"];


if (_weapon == "<Empty>") exitWith {
[_uav,"SetWeapon",""] call lxws_fnc_droneWeapon;
};

if (_args isEqualTo "") then {

getArray (configOf _uav >> "lxws_droneWeapon") params ["_weapon","_mag1","_mag2"]; 
} else {


};
private _muzzles = getArray (configfile >> "CfgWeapons" >> _weapon >> "muzzles");


private _getCompatMag = {














(compatibleMagazines [_weapon,_this])#0
};


private _primMag = call {

private _return = call {
if (_mag1 == "") then {
"this" call _getCompatMag
} else {
_mag1
}
};
if !(isNil "_return") then {
[_return,getNumber (configFile >> "CfgMagazines" >> _return >> "count")]
} else {
[]
};
};


private _secMag = call {

private "_return";
if (count _muzzles >= 2) then {
_return = call {
if (_mag2 == "") then {
(_muzzles#1) call _getCompatMag
} else {
_mag2
}
};
};

if !(isNil "_return") then {
[_return,getNumber (configFile >> "CfgMagazines" >> _return >> "count")]
} else {
[]
};
};


[_uav,"init",0] call lxws_fnc_droneWeapon;


[_uav,"SetWeapon",[
_weapon,"","","",
_primMag,
_secMag,
""
]] call lxws_fnc_droneWeapon;
};
};}