params[
    ["_man", nil,[objNull]],
    ["_pos", nil,     [[]]],
    ["_dir", nil,      [0]]
];
isNil{
private _crate     = "B_supplyCrate_F" createVehicle _pos;

_crate allowDamage false;
_crate setDir _dir;
_crate setPosATL [_pos#0,_pos#1,(_pos#2)+0.1];
_crate setVectorUp surfaceNormal _pos;

[_crate] spawn PSA_fnc_stopVelocityAndDamage;
[_man]   spawn PSA_fnc_cratePlacementEffects;
[_crate, _man] call  PSA_fnc_initResupplyCrate;

_man setVariable ["PSA_myCrate", _crate, true];

};