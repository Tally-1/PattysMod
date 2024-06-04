params[
    ["_man", nil,[objNull]],
    ["_pos", nil,     [[]]],
    ["_dir", nil,      [0]]
];
private _crate     = "B_supplyCrate_F" createVehicle _pos;
private _allCrates = missionNamespace getVariable "PSA_specialCrates";

_allCrates pushBackUnique _crate;

missionNamespace setVariable ["PSA_specialCrates",_allCrates,true];
_man             setVariable ["PSA_myCrate", _crate, true];

[_man, _crate] call PSA_fnc_setSpecialCrateData;
[_crate]       call PSA_fnc_setSpecialCrateEvents;
[_crate]       remoteExecCall ["PSA_fnc_setSpecialCrateActions", 0];

_crate allowDamage false;
_crate setDir _dir;
_crate setPosATL [_pos#0,_pos#1,(_pos#2)+0.1];
_crate setVectorUp surfaceNormal _pos;
[_crate] spawn PSA_fnc_stopVelocityAndDamage;

true;