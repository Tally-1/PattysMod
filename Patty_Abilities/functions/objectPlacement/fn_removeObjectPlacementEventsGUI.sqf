private _display = findDisplay 46;
private _keyDown = _display getVariable "PSA_objectKeyDownEh";
private _mouseEh = _display getVariable "PSA_objectScrollEh";

_display displayRemoveEventHandler ["KeyDown",       _keyDown];
_display displayRemoveEventHandler ["MouseZChanged", _mouseEh];

PSA_ctrl = nil;