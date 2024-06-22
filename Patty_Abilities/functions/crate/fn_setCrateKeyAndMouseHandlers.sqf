private _display  = findDisplay 46;
private _keyDown = _display displayAddEventHandler ["KeyDown",       {_this call PSA_fnc_cratePlacementKeyHandler}];
private _mouseEh = _display displayAddEventHandler ["MouseZChanged", {_this call PSA_fnc_cratePlacementMouseHandler}];

_display setVariable ["PSA_crateKeyDownEh", _keyDown];
_display setVariable ["PSA_crateKeyUpEh",   _keyUp];
_display setVariable ["PSA_crateMouseEh",   _mouseEh];

PSA_ctrl = false;

true;