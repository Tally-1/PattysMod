params[
	["_man",       nil, [objNull]],
	["_isPlacing", nil,    [true]]
];
_man playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";

if(_isPlacing)exitWith{[_man] call PSA_fnc_cratePlaceProgressBar};

[_man] call PSA_fnc_crateRetrieveProgressBar;

true;