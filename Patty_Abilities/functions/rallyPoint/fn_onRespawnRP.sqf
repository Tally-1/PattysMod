params[
    ["_man",nil,[objNull]]
];
private _anim = _self get "animState";
private _dir  = _self get "direction";
private _pos  = _self get "position";

[
    _man,
    _anim,
    _dir,
    _pos
] remoteExecCall ["PSA_fnc_setAnimDirAndPosATL", _man];

true;