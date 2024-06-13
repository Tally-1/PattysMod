params[
    ["_man", nil,[objNull]],
    ["_time", nil,     [0]]
];
private _animTime = 6;
private _coef     = _animTime/_time;
private _animEh   = 
_man addEventHandler ["AnimDone", {
    params ["_man", "_anim"];
    if("MountOptic" != _anim)exitWith{};
    [_man] spawn PSA_fnc_endResupplyAnim;
}];

_man setVariable ["PSA_reAnimEh", _animEh];
_man playMoveNow "MountOptic";
_man setAnimSpeedCoef _coef;