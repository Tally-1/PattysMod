params[
	["_man",  nil,        [objNull]],
	["_text", "Placing crate", [""]]
];
private _placeTime = PSA_cratePlacementTime;
private _code      = [[_man], {_this spawn PSA_fnc_endCrateAnim}];
[_man, _placeTime]                   call PSA_fnc_placeCrateAnim;
[_text, _placeTime, _code] call PSA_fnc_progressBar;

true;