params[
    ["_success", nil, [false]]
];

private _man      = player;
private _crate    = _man getVariable "PSA_localCrate";
private _keyEh    = _man getVariable "PSA_crateKeyEh";
private _frameEh  = _man getVariable "PSA_crateFrameEh";
private _deathEh  = _man getVariable "PSA_cratePlaceDeathEh";
private _display  = findDisplay 46;
private _displayH = uiNameSpace getVariable ["PSA_hintDisplay",displayNull];
private _pos      = getPosATLVisual _crate;
private _dir      = getDirVisual _crate;

_display displayRemoveEventHandler ["KeyDown", _keyEh];
[_frameEh] call PSA_fnc_removeClientFrameTask;
_man removeEventHandler ["killed", _deathEh];

deleteVehicle _crate;

_man setVariable ["PSA_localCrate",        nil];
_man setVariable ["PSA_crateKeyEh",        nil];
_man setVariable ["PSA_crateFrameEh",      nil];
_man setVariable ["PSA_cratePlaceDeathEh", nil];

if!(isNull _displayH)then{
	_displayH closeDisplay 1;
};
if!(_success)exitWith{
    playSoundUI ["beep", 0.5, 1];
    false;
};

[_man, true] call PSA_fnc_cratePlacementEffects;
_man setVariable ["PSA_cratePosDir", [_pos, _dir], true];
_man setVariable ["PSA_crateTime",   time, true];

true;