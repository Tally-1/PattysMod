params[
    ["_success", nil, [false]]
];
private _man      = player;
private _crate    = _man getVariable "PSA_localCrate";
private _frameEh  = _man getVariable "PSA_crateFrameEh";
private _deathEh  = _man getVariable "PSA_cratePlaceDeathEh";
private _displayH = uiNameSpace getVariable ["PSA_hintDisplay",displayNull];
private _pos      = getPosATLVisual _crate;
private _dir      = getDirVisual _crate;

[]         call PSA_fnc_removeCrateKeyAndMouseHandlers;
[_frameEh] call PSA_fnc_removeClientFrameTask;

_man removeEventHandler ["killed", _deathEh];
_displayH closeDisplay 1;
deleteVehicle _crate;


_man setVariable ["PSA_localCrate",        nil];
_man setVariable ["PSA_crateFrameEh",      nil];
_man setVariable ["PSA_cratePlaceDeathEh", nil];

if!(_success)exitWith{
	playSound "hintCollapse";
	false
};

[_man, true] call PSA_fnc_cratePlacementEffects;
_man setVariable ["PSA_cratePosDir", [_pos, _dir], true];
_man setVariable ["PSA_crateTime",   time, true];

true;