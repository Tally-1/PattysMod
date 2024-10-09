params ["_uav","_mode","_args"];



call {
private _UAVName = getText (configOf _uav >> "displayName");

if (_mode == "Init") exitWith {	



_uav lockInventory true;




private _initialized = _uav getVariable ["lxws_initialized",false];


_uav setVariable ["lxws_initialized",true];


if (is3DEN) then {
_uav spawn {
if (
count (_this get3DENAttribute "lxws_holdingWeapon") == 0 or {
(_this get3DENAttribute "lxws_holdingWeapon")#0 isEqualTo ""
}
) then {
_this set3DENAttribute ["lxws_holdingWeapon",getArray (configOf _this >> "lxws_droneWeapon")];
};
};
};



if (!_initialized) then {
_uav addEventHandler ["Fired",{
params ["_uav","_weapon","_muzzle","","","_magazine","_projectile"];


private _holdingWeapon = _uav getVariable ["lxws_holdingWeapon",[]];


if (_holdingWeapon#0 == _weapon) then {

private _isGunnerCam = (cameraOn == _uav and cameraView == "GUNNER");


private _magazines = magazinesAmmo _uav;
private _ammoCount = call {
private _return = (_magazines findIf {_x#0 == _magazine});
if (_return == -1) then {
0
} else {
_magazines#_return#1
};
};
_holdingWeapon#(call {
if (_weapon == _muzzle) then {4} else {5}
}) set [1,_ammoCount];


_uav setVariable ["lxws_holdingWeapon",_holdingWeapon,true];


private "_recoil";
if (_weapon == _muzzle) then {



















_recoil = getArray (configFile >> "CfgRecoils" >> getText (configFile >> "CfgWeapons" >> _weapon >> "recoil") >> "kickBack")
} else {
_recoil = getArray (configFile >> "CfgRecoils" >> getText (configFile >> "CfgWeapons" >> _weapon >> _muzzle >> "recoil") >> "kickBack")
};


_recoil = _recoil apply {
if (_x isEqualType "") then {
_x call BIS_fnc_parseNumber
} else {
_x
};
};


_uav addForce [(vectorNormalized velocity _projectile) vectorMultiply -1000 vectorMultiply
linearConversion [0,1,random 1,_recoil#0,_recoil#1]
,[0,0,-0.2]];


private _cartridge = getText (configFile >> "CfgAmmo" >> typeOf _projectile >> "cartridge");
if (_cartridge != "") then {
_cartridge = getText (configFile >> "CfgVehicles" >> _cartridge >> "model");
drop [
[_cartridge,1,0,1,0],"","SpaceObject",
1,2,[0,0,-0.2],[0,0,0],
1,6,1,0,
[1],
[],
[],
0.1,0.05,"","",
_uav,0,
true,0.12
];
};
};
}];

private _actionID = _uav addAction [localize "STR_A3_C_in1_taskBIS_goArmory_title" + " " + _UAVName,
{
params ["_target","_caller","_actionId","_arguments"];


_caller playActionNow "putDown";


[_target,"SetWeapon",(getUnitLoadout _caller)#0] call lxws_fnc_droneWeapon;


_caller removeWeapon primaryWeapon _caller;

},
[_x],
1, 
true, 
false, 
"",

format ["
						if (!alive _target) exitWith {removeAllActions _target; false};
						if (_target getVariable ['DisableRearm',0] == 1) exitWith {false};
						if (vehicle _this == _target) exitWith {false};
						if (vehicle _this != _this) exitWith {false};
						
						(currentWeapon _this == primaryWeapon _this) and
						(primaryWeapon _this != '') and
						count (_target getVariable ['lxws_holdingWeapon',[]]) == 0 and
						(count (getUnitLoadout _this#0) != 0) and {
							(count (getUnitLoadout _this#0#4) != 0)
						}
					",
_x
],
2.75,
false,
"",
""
];

private _actionID = _uav addAction [localize "STR_LXWS_UAV_Disarm" + " " + _UAVName,
{
params ["_target","_caller","_actionId","_arguments"];
private _weapon = _target getVariable ["lxws_holdingWeapon",[]];
private _loadout = getUnitLoadout _caller;
private _mag1 = _weapon#4;
private _mag2 = _weapon#5;


_caller playActionNow "putDown";

[_target,"SetWeapon",[]] call lxws_fnc_droneWeapon;

if (count (_loadout#0) == 0) then {	
_loadout = [
_weapon,
nil,
nil,
nil,
nil,
nil,
nil,
nil,
nil,
nil
];
_caller setUnitLoadout _loadout;	
} else {	
private _weaponHolder = createVehicle ["WeaponHolder_Single_F",_caller modelToWorld [0,1,0.025],[],0,"CAN_COLLIDE"];
_weaponHolder setDir (random 360);
_weaponHolder addWeaponWithAttachmentsCargoGlobal [_weapon,1];	
};
},
[_x],
1, 
true, 
false, 
"",

format ["
						if (!alive _target) exitWith {removeAllActions _target; false};
						if (_target getVariable ['DisableRearm',0] == 1) exitWith {false};
						if (vehicle _this == _target) exitWith {false};
						if (vehicle _this != _this) exitWith {false};
						
						count (_target getVariable ['lxws_holdingWeapon',[]]) != 0
					",
_x
],
2.75,
false,
"",
""
];

{
private _actionID = _uav addAction [str _forEachIndex,	
{
params ["_target","_caller","_actionId","_arguments"];
private _forEachIndex = _arguments#0;
private _weapon = _target getVariable ["lxws_holdingWeapon",[]];

private _magazine = _weapon#([4,5]#_forEachIndex);
private _oldCount = _magazine#1;


private _compatibleMags = (((magazinesAmmo _caller) select {
_x#0 == (_magazine#0)
}));
private _magCount = selectMax (_compatibleMags apply {_x#1});


_caller playActionNow "putDown";


_magazine set [1,_magCount];
[_target,"SetWeapon",_weapon] call lxws_fnc_droneWeapon;


private _loadout = getUnitLoadout _caller;
{
_loadout set [_x,nil];
} forEach [0,1,2,6,7,8,9];

private _foundAndRemoved = false; 
{
if (count (_loadout#_x) != 0) then {
private _find = ((_loadout#_x#1) findIf {_x#0 == (_magazine#0) and _x#2 == _magCount});
if (_find != -1) exitWith {
private _count = (_loadout#_x#1#_find#1);
if (_count == 1) then {

_loadout#_x#1 deleteAt _find;
} else {

_loadout#_x#1#_find set [1,_count - 1];
};
};
};
} forEach [3,4,5];


private _currentUAV = getConnectedUAV _caller;


_caller setUnitLoadout _loadout;


_caller connectTerminalToUAV _currentUAV;


if (_oldCount != 0) then {
_caller addMagazine [_magazine#0,_oldCount];
};
},
[_forEachIndex],
0.1, 
true, 
false, 
"",

["
						if (!alive _target) exitWith {removeAllActions _target; false};
						if (vehicle _this == _target) exitWith {false};
						if (vehicle _this != _this) exitWith {false};
						
						private _holdingWeapon = _target getVariable ['lxws_holdingWeapon',[]];
						if (count _holdingWeapon != 0 and {count (_holdingWeapon#4) != 0}) then {
							private _magazineCount = getNumber (configfile >> 'CfgMagazines' >> (_holdingWeapon#4#0) >> 'count');
							((_holdingWeapon#4#1) < _magazineCount) and
							(_holdingWeapon#4#0) in magazines _this
						} else {
							false
						};
					",
"
						if (!alive _target) exitWith {removeAllActions _target; false};
						if (vehicle _this == _target) exitWith {false};
						if (vehicle _this != _this) exitWith {false};
						
						private _holdingWeapon = _target getVariable ['lxws_holdingWeapon',[]];
						if (count _holdingWeapon != 0 and {count (_holdingWeapon#5) != 0}) then {
							private _magazineCount = getNumber (configfile >> 'CfgMagazines' >> (_holdingWeapon#5#0) >> 'count');
							((_holdingWeapon#5#1) < _magazineCount) and
							(_holdingWeapon#5#0) in magazines _this
						} else {
							false
						};
					"]#_forEachIndex,
2.75,
false,
"",
""
];
_uav setVariable [_x,_actionID,true];
} forEach ["lxws_reloadAction","lxws_reloadAction2"];
};


if (!is3DEN and time > 1 and !_initialized) then {
[_uav,"SetWeaponInit",[PSA_combatDroneGun,PSA_combatDroneMagazine,""]] call lxws_fnc_droneWeapon;
};


if (!is3DEN and count (_uav getVariable ["lxws_holdingWeapon",[]]) != 0) then {
[_uav,"SetWeapon",(_uav getVariable ["lxws_holdingWeapon",[]])] call lxws_fnc_droneWeapon;
};
};

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
};