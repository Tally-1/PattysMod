params[
    ["_success", nil, [false]]
];

private _man      = player;
private _crate    = _man getVariable "PSA_localCrate";
private _keyEh    = _man getVariable "PSA_crateKeyEh";
private _frameEh  = _man getVariable "PSA_crateFrameEh";
private _deathEh  = _man getVariable "PSA_cratePlaceDeathEh";
private _display  = findDisplay 46;
private _pos      = getPosATLVisual _crate;
private _dir      = getDirVisual _crate;

_display displayRemoveEventHandler ["KeyDown", _keyEh];
[_frameEh] call PSA_fnc_deleteAtClientFrameTasks;// removeMissionEventHandler ["EachFrame", _frameEh];
_man removeEventHandler ["killed", _deathEh];

deleteVehicle _crate;

_man setVariable ["PSA_localCrate",        nil];
_man setVariable ["PSA_crateKeyEh",        nil];
_man setVariable ["PSA_crateFrameEh",      nil];
_man setVariable ["PSA_cratePlaceDeathEh", nil];

if!(_success)exitWith{
    playSoundUI ["beep", 0.5, 1];
    false;
};

[_man, _pos, _dir] remoteExecCall ["PSA_fnc_initSpecialCrate",2];
_man setVariable ["PSA_crateTime", time, true];

playSoundUI ["click", 1, 1];

true;