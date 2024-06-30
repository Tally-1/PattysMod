params[
    ["_man", nil,[objNull]]
];

if!([_man] call PSA_fnc_canPlaceCrate)exitWith{};

private _manZ     = (getPosATLVisual _man)#2;
private _crate    = createSimpleObject ["B_supplyCrate_F", _man modelToWorldVisualWorld [0,3,1], true];
private _crateDir = getDirVisual _crate;
private _frameEh  = [[_man, _crate],PSA_fnc_onEachCrateFrame] call PSA_fnc_addClientFrameTask;
private _killedEh = _man addEventHandler ["killed", {[false] call PSA_fnc_endCratePlacement}];
private _sounds   = ["beep_target", "hintExpand"];

_man   setVariable ["PSA_localCrate",           _crate];
_man   setVariable ["PSA_crateFrameEh",       _frameEh];
_man   setVariable ["PSA_cratePlaceDeathEh", _killedEh];

_crate setVariable ["PSA_crateDir",          _crateDir];
_crate setVariable ["PSA_crateZ",                _manZ];

[]        spawn PSA_fnc_cratePlacementHint;
[_sounds] spawn  PSA_fnc_playSoundList;
[]        call  PSA_fnc_setCrateKeyAndMouseHandlers;


true;