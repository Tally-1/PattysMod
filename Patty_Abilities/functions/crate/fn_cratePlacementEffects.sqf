params[
	["_man",       nil, [objNull]],
	["_isPlacing", nil,    [true]]
];
private _placeTime = PSA_cratePlacementTime;
[_man, _placeTime] call PSA_fnc_placeCrateAnim;

if(_isPlacing)exitWith{[_man] call PSA_fnc_cratePlaceProgressBar};

[_man] call PSA_fnc_crateRetrieveProgressBar;

true;