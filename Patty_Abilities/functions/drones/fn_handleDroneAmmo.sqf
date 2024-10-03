params[
    ["_drone",nil,[objNull]]
];
private _ammo = (_drone getVariable "lxws_holdingweapon")#4#1;
if(_ammo > 0)exitWith{};

[_drone] spawn PSA_fnc_droneAutoReload;