
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
