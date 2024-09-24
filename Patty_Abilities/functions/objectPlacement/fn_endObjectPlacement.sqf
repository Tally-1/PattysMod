params[
    ["_success", nil, [false]]
];
private _man      = player;
private _object   = _man getVariable "PSA_localObject";
private _frameEh  = _man getVariable "PSA_objectFrameEh";
private _deathEh  = _man getVariable "PSA_objectPlaceDeathEh";
private _displayH = uiNameSpace getVariable ["PSA_hintDisplay",displayNull];
private _placeFnc = _man getVariable "PSA_objectPlaceFnc";
private _pos      = getPosATLVisual _object;
private _dir      = getDirVisual _object;

[]         call PSA_fnc_removeObjectPlacementEventsGUI;
[_frameEh] call PSA_fnc_removeClientFrameTask;

_man removeEventHandler ["killed", _deathEh];
_displayH closeDisplay 1;
deleteVehicle _object;

_man setVariable ["PSA_localObject",        nil];
_man setVariable ["PSA_objectFrameEh",      nil];
_man setVariable ["PSA_objectPlaceDeathEh", nil];

if!(_success)exitWith{
	playSound "hintCollapse";
	false
};

_man setVariable ["PSA_objectPosDir", [_pos, _dir], true];
_man setVariable ["PSA_objectTime",           time, true];
(_placeFnc#0)call(_placeFnc#1);

true;