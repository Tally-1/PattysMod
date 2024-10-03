params [
	["_man",   nil, [objNull]],
    ["_drone", nil, [objNull]]
];
private _soundObject = _drone getVariable "PSA_soundObject";

detach _soundObject;
deleteVehicle _soundObject;

_drone setVariable ["PSA_soundObject",nil,true];
_drone engineOn true;

playSound "hintCollapse";
"Drone Reload Aborted" call p_dbg;

if!([_man] call PSA_fnc_functionalMan)exitWith{};
_man switchMove "amovpknlmstpsraswrfldnon";

true;