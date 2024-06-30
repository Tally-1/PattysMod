waitUntil {!isNull (findDisplay 12 displayCtrl 51)};

private _map = findDisplay 12 displayCtrl 51;
private _eh  = _map getVariable "PSA_drawEh";
if(!isNil "_eh")exitWith{};

_eh = _map ctrlAddEventHandler ["Draw",{call PSA_fnc_drawCratesMap}];

_map setVariable ["PSA_drawEh", _eh];

_eh;