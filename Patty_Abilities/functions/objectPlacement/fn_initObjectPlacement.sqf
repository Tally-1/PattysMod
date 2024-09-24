private _displayName = getText (configfile >> "CfgVehicles" >> (_this#1) >> "displayName");
params[
    ["_man",           nil,                     [objNull]],
	["_objectType",    nil,                          [""]],
	["_placeFunction", nil,                        [[]],2],
	["_condition",     [[],{true}],                [[]],2],
	["_objectName",    _displayName,                 [""]],
	["_sounds",        ["beep_target","hintExpand"], [[]]]
];

if!([_man, _condition] call PSA_fnc_canPlaceObject)exitWith{};

private _manZ         = (getPosATLVisual _man)#2;
private _object       = createSimpleObject [_objectType, _man modelToWorldVisualWorld [0,3,1], true];
private _objectDir    = getDirVisual _object;
private _frameEh      = [[_man, _object],PSA_fnc_eachFrameObjPlacement] call PSA_fnc_addClientFrameTask;
private _killedEh     = _man addEventHandler ["killed", {[false] call PSA_fnc_endObjectPlacement}];
PSA_objectDisplayName = _objectName;

_man setVariable ["PSA_localObject",          _object];
_man setVariable ["PSA_objectFrameEh",       _frameEh];
_man setVariable ["PSA_objectPlaceDeathEh", _killedEh];
_man setVariable ["PSA_objectPlaceFnc",_placeFunction];

_object setVariable ["PSA_objectDir",       _objectDir];
_object setVariable ["PSA_objectZ",              _manZ];

[]        spawn PSA_fnc_objectPlacementHint;
[_sounds] spawn  PSA_fnc_playSoundList;
[]        call  PSA_fnc_objectPlacementEventsGUI;


true;