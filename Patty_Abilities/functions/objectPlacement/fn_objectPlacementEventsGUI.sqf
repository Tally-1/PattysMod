private _display  = findDisplay 46;
private _keyDown = _display displayAddEventHandler ["KeyDown",       {_this call PSA_fnc_objectPlacementOnKeyDown}];
private _mouseEh = _display displayAddEventHandler ["MouseZChanged", {_this call PSA_fnc_objectPlacementOnScroll}];

_display setVariable ["PSA_objectKeyDownEh", _keyDown];
_display setVariable ["PSA_objectScrollEh",   _mouseEh];

PSA_ctrl = false;

true;