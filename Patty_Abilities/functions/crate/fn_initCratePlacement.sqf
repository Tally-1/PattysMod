params[
    ["_man", nil,[objNull]]
];

if!([_man] call PSA_fnc_canPlaceCrate)exitWith{};

private _crate      = createSimpleObject ["Box_NATO_Equip_F", _man modelToWorldVisualWorld [0,3,1], true];
private _display  = findDisplay 46;
private _keyEh    = _display displayAddEventHandler ["KeyDown", {_this call PSA_fnc_cratePlacementKeyHandler}];
private _frameEh  = [[_man, _crate],PSA_fnc_onEachCrateFrame] call PSA_fnc_addClientFrameTask;//addMissionEventHandler ["EachFrame", {call PSA_fnc_onEachCrateFrame}];
private _killedEh = _man addEventHandler ["killed", {[false] call PSA_fnc_endCratePlacement}];

_man setVariable ["PSA_localCrate",        _crate];
_man setVariable ["PSA_crateKeyEh",        _keyEh];
_man setVariable ["PSA_crateFrameEh",      _frameEh];
_man setVariable ["PSA_cratePlaceDeathEh", _killedEh];

true;