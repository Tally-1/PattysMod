params[
	["_man", nil, [objNull]]
];
private _placeTime = PSA_cratePlacementTime;
private _text      = "Placing crate";
private _endCode   = [[_man], PSA_fnc_cratePlaceProgressBarEnded];
private _abortCode = [[_man], PSA_fnc_cratePlaceProgressBarAborted];
private _condition = [[_man], PSA_fnc_functionalMan];

[_text, _placeTime, _endCode, _abortCode, _condition, true] call PSA_fnc_progressBar;

true;