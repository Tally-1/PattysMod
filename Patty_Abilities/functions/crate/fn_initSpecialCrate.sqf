params[
    ["_man", nil,[objNull]],
    ["_pos", nil,     [[]]],
    ["_dir", nil,      [0]]
];
isNil{
private _crate = "B_supplyCrate_F" createVehicle _pos;

[_crate]       call PSA_fnc_secureObjectOnSpawn;
[_crate, _man] call PSA_fnc_initResupplyCrate;

_man setVariable ["PSA_myCrate", _crate, true];
remoteExecCall ["PSA_fnc_updateAllCrates"];

};