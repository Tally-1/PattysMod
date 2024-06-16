params[
    ["_man", nil,[objNull]]
];

if!([_man] call PSA_fnc_canPlaceCrate)exitWith{};

private _crate    = createSimpleObject ["B_supplyCrate_F", _man modelToWorldVisualWorld [0,3,1], true];
private _crateDir = getDirVisual _crate;
private _display  = findDisplay 46;
private _keyEh    = _display displayAddEventHandler ["KeyDown", {_this call PSA_fnc_cratePlacementKeyHandler}];
private _mouseEh  = _display displayAddEventHandler ["MouseZChanged", {_this call PSA_fnc_cratePlacementMouseHandler}];
private _frameEh  = [[_man, _crate],PSA_fnc_onEachCrateFrame] call PSA_fnc_addClientFrameTask;
private _killedEh = _man addEventHandler ["killed", {[false] call PSA_fnc_endCratePlacement}];

_man setVariable   ["PSA_localCrate",           _crate];
_man setVariable   ["PSA_crateKeyEh",           _keyEh];
_man setVariable   ["PSA_crateMouseEh",       _mouseEh];
_man setVariable   ["PSA_crateFrameEh",       _frameEh];
_man setVariable   ["PSA_cratePlaceDeathEh", _killedEh];
_crate setVariable ["PSA_crateDir",          _crateDir];

[] spawn PSA_fnc_cratePlacementHint;

true;